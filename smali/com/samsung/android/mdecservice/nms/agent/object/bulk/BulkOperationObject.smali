.class public Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;
.super Ljava/lang/Object;
.source "BulkOperationObject.java"


# static fields
.field private static final KEY_OBJ_ATTR:Ljava/lang/String; = "attribute"

.field private static final KEY_OBJ_ATTRS:Ljava/lang/String; = "attributes"

.field private static final KEY_OBJ_CORRELATIONID:Ljava/lang/String; = "correlationId"

.field private static final KEY_OBJ_CORRELATIONTAG:Ljava/lang/String; = "correlationTag"

.field private static final KEY_OBJ_FLAG:Ljava/lang/String; = "flag"

.field private static final KEY_OBJ_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_OBJ_OBJECTS:Ljava/lang/String; = "objects"

.field private static final KEY_OBJ_OBJECT_OPERATION:Ljava/lang/String; = "operation"

.field private static final KEY_OBJ_OBJECT_REFRENCE:Ljava/lang/String; = "objectReference"

.field private static final KEY_OBJ_RESOURCE_URL:Ljava/lang/String; = "resourceURL"

.field private static final KEY_OBJ_UPDATE:Ljava/lang/String; = "objectUpdate"

.field private static final KEY_OBJ_UPDATE_REFERENCE:Ljava/lang/String; = "objectUpdateReference"

.field private static final KEY_ROOT_BULK_ATTRIBUTE_UPDATE:Ljava/lang/String; = "objectUpdateList"

.field private static final KEY_ROOT_BULK_DELETE:Ljava/lang/String; = "bulkDelete"

.field private static final KEY_ROOT_BULK_UPDATE:Ljava/lang/String; = "bulkUpdate"

.field private static final KEY_ROOT_OBJECT:Ljava/lang/String; = "object"

.field private static final KEY_ROOT_OBJECTS:Ljava/lang/String; = "objectList"

.field private static final OPERATION_UPDATE_FLAG:Ljava/lang/String; = "UpdateFlag"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

.field private mFlag:Ljava/lang/String;

.field private mIsBulkAttributeUpdate:Z

.field private mJsonObj:Lorg/json/JSONObject;

.field private mOpType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

.field private mSyncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;",
            "Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 2
    iput-boolean p4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mIsBulkAttributeUpdate:Z

    const/4 p4, 0x0

    .line 3
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mSyncList:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mOpType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    .line 6
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BulkOpObj<"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mOpType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">Object"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    const-string p2, "init"

    .line 8
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "mandatory field is missing at SyncEventList"

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    if-ne v1, v3, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "resourceURL"

    .line 7
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private makeInsert(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 10
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "name"

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    .line 12
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string p1, "attribute"

    .line 14
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "attributes"

    .line 15
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "flag"

    .line 19
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "flags"

    .line 20
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "correlationTag"

    .line 22
    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "correlationId"

    .line 24
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    return-object v3

    .line 25
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mandatory field is missing at SyncEventList"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private makeJson(I)Lorg/json/JSONObject;
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject$1;->$SwitchMap$com$samsung$android$mdecservice$nms$constants$NmsConstants$dataType:[I

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong datatype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mSyncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->hasMiscAttrs()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p1

    move-object v6, v4

    goto :goto_3

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mSyncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    new-instance v0, Ljava/util/TreeMap;

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 16
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p1

    move-object v6, v5

    move-object v5, v4

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mSyncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    new-instance v0, Ljava/util/TreeMap;

    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_2

    :cond_6
    move-object v0, v4

    .line 23
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p1

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    .line 27
    :goto_3
    sget-object v7, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject$1;->$SwitchMap$com$samsung$android$mdecservice$nms$constants$NmsConstants$opType:[I

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mOpType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v3, :cond_9

    if-eq v7, v2, :cond_8

    if-eq v7, v1, :cond_7

    .line 28
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong opType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mOpType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 29
    :cond_7
    invoke-direct {p0, v5, v6, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->makeDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 30
    :cond_8
    invoke-direct {p0, v0, v5, v6, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->makeUpdate(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 31
    :cond_9
    invoke-direct {p0, v0, v5, v6}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->makeInsert(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private makeUpdate(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "mandatory field is missing at SyncEventList"

    if-nez v1, :cond_7

    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    if-ne v1, v3, :cond_1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "resourceURL"

    if-eq p3, v1, :cond_2

    :try_start_2
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->LOG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    if-ne p3, v1, :cond_6

    :cond_2
    if-eqz p1, :cond_6

    .line 7
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 12
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 14
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const-string v7, "name"

    .line 15
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    .line 16
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    const-string p1, "attribute"

    .line 18
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mDataType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->LOG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "attributes"

    if-ne p1, v1, :cond_5

    const/4 p1, 0x1

    .line 20
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mIsBulkAttributeUpdate:Z

    .line 21
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 23
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v5, "flag"

    .line 24
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "flags"

    .line 26
    invoke-virtual {v3, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p2, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "objectUpdate"

    .line 28
    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 29
    :cond_5
    invoke-virtual {p2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p2, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {p2, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    return-object p2

    .line 32
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public encodeJSON()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mSyncList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-direct {p0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->makeJson(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v3, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject$1;->$SwitchMap$com$samsung$android$mdecservice$nms$constants$NmsConstants$opType:[I

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mOpType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    const-string v5, "objects"

    const-string v6, "objectReference"

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong opType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mOpType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "bulkDelete"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 13
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mIsBulkAttributeUpdate:Z

    if-eqz v3, :cond_4

    const-string v1, "objectUpdateReference"

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "objectUpdateList"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "flag"

    .line 20
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "operation"

    const-string v3, "UpdateFlag"

    .line 22
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "flags"

    .line 23
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "bulkUpdate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    const-string v1, "object"

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "objectList"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
