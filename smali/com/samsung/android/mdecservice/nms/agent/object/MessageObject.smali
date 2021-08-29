.class public Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;
.super Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;
.source "MessageObject.java"


# static fields
.field public static final KEY_OBJ_CORRELATIONID:Ljava/lang/String; = "correlationId"

.field public static final KEY_OBJ_PAYLOADURL:Ljava/lang/String; = "payloadURL"

.field public static final KEY_OBJ_PAYLOAD_PART:Ljava/lang/String; = "payloadPart"

.field public static final LOG_TAG:Ljava/lang/String; = "MsgObj"


# instance fields
.field private mCorrelationId:Ljava/lang/String;

.field private mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

.field private mPayLoadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPayLoadURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadInfos:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->hasMiscAttrs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadInfos:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 12
    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->hasMiscAttrs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 15
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadInfos:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    return-void
.end method

.method private parseContentDisposition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    .line 1
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    const-string v5, "="

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 5
    aget-object v5, v4, v2

    .line 6
    aget-object v4, v4, v6

    .line 7
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public encodeJSON()V
    .locals 12

    const-string v0, "MsgObj"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mCorrelationId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "correlationId"

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "correlationTag"

    .line 5
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParentFolder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCorrelationId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCorrelationTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 10
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    move v3, v4

    .line 11
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 12
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flag ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "flag"

    .line 15
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "flags"

    .line 16
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 19
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 20
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 21
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 22
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    .line 23
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    const-string v8, "name"

    .line 24
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "value"

    .line 25
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    const-string v3, "attribute"

    .line 27
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "attributes"

    .line 28
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "object"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayLoadURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadURL:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON()V
    .locals 12

    const-string v0, "size"

    const-string v1, "href"

    const-string v2, "payloadPart"

    const-string v3, "payloadURL"

    const-string v4, "correlationId"

    const-string v5, "object"

    const-string v6, "contentDisposition"

    .line 1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 4
    :cond_0
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "MsgObj"

    if-eqz v5, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mCorrelationId:Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCorrelationId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->parseCommonJsonElements(Lorg/json/JSONObject;)V

    const-string v4, "attributes"

    .line 8
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p0, v7}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->parseJsonToAttrMap(Lorg/json/JSONObject;)V

    .line 10
    new-instance v4, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-direct {v4, v5}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 11
    :cond_2
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadURL:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_3
    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadURL:Ljava/lang/String;

    .line 14
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPayLoadURL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadInfos:Ljava/util/List;

    .line 17
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    .line 18
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 19
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "contentType"

    .line 20
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 22
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 24
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v5

    .line 25
    :goto_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 26
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v9, v5

    .line 27
    :goto_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 28
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v5

    .line 29
    :goto_4
    new-instance v10, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadPartInfo;

    invoke-direct {v10}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadPartInfo;-><init>()V

    .line 30
    invoke-virtual {v10, v8}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadPartInfo;->setContentDisposition(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v10, v7}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadPartInfo;->setContentType(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v10, v9}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadPartInfo;->setHref(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v10, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadPartInfo;->setSize(Ljava/lang/String;)V

    .line 34
    new-instance v10, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    invoke-direct {v10}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;-><init>()V

    .line 35
    invoke-virtual {v10, v7}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setContentType(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v10, v8}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setContentDisposition(Ljava/lang/String;)V

    const-string v7, "filename"

    .line 37
    invoke-direct {p0, v7, v8}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->parseContentDisposition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "name"

    .line 38
    invoke-direct {p0, v11, v8}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->parseContentDisposition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_7

    .line 39
    invoke-virtual {v10, v7}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setFileName(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-eqz v8, :cond_8

    .line 40
    invoke-virtual {v10, v8}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setFileName(Ljava/lang/String;)V

    .line 41
    :cond_8
    :goto_5
    invoke-virtual {v10, v9}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setHRef(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v10, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setPayloadSize(Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mPayLoadInfos:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    return-void
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->mCorrelationId:Ljava/lang/String;

    return-void
.end method
