.class public Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;
.super Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;
.source "BulkRcsMessageObject.java"


# static fields
.field private static final KEY_ROOT_OBJECTS:Ljava/lang/String; = "objectList"

.field private static final LOG_TAG:Ljava/lang/String; = "BulkRcsMessageObj"


# instance fields
.field private mCorrelationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonObj:Lorg/json/JSONObject;

.field private mRcsMessageAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mCorrelationIdList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mCorrelationIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mRcsMessageAttributeList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mRcsMessageAttributeList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_7

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mRcsMessageAttributeList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mJsonObj:Lorg/json/JSONObject;

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 7
    :goto_0
    iget-object v5, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 10
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 11
    new-instance v8, Ljava/util/TreeMap;

    iget-object v9, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mRcsMessageAttributeList:Ljava/util/List;

    .line 12
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v9}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v8, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    .line 13
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 14
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 15
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 16
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    array-length v13, v12

    move v14, v3

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    .line 17
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 18
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1

    const-string v12, "name"

    .line 20
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "value"

    .line 21
    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_5

    const-string v8, "attribute"

    .line 24
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string v7, "attributes"

    .line 26
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 28
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 29
    iget-object v8, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "flag"

    .line 30
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "flags"

    .line 31
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "correlationId"

    .line 32
    iget-object v7, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mCorrelationIdList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 34
    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "object"

    .line 35
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 37
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v3, "objectList"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_7
    :goto_3
    const-string v0, "BulkRcsMessageObj"

    const-string v2, "correlation-id does not exist or length mismatch"

    .line 38
    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_4
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setCorrelationIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mCorrelationIdList:Ljava/util/List;

    return-void
.end method

.method public setRcsMessageAttributeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->mRcsMessageAttributeList:Ljava/util/List;

    return-void
.end method
