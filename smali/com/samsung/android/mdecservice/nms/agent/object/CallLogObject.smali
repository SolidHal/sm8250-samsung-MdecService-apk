.class public Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;
.super Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;
.source "CallLogObject.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CallLogObj"


# instance fields
.field private mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 4
    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 12

    const-string v0, "CallLogObj"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "correlationTag"

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParentFolder= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCorrelationTag= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    move v3, v4

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 10
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "flag"

    .line 13
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "flags"

    .line 14
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 17
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

    .line 18
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 19
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 20
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    .line 21
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    const-string v8, "name"

    .line 22
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "value"

    .line 23
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    const-string v3, "attribute"

    .line 25
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "attributes"

    .line 26
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "object"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public getAttr()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    return-object v0
.end method

.method public parseCallLogJson(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->parseCommonJsonElements(Lorg/json/JSONObject;)V

    const-string v0, "attributes"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->parseJsonToAttrMap(Lorg/json/JSONObject;)V

    .line 4
    new-instance p1, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-direct {p1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public parseJSON()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "object"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->parseCallLogJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
