.class public Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;
.super Ljava/lang/Object;
.source "RcsUpdateObject.java"


# static fields
.field public static final KEY_GROUP_UPDATE:Ljava/lang/String; = "updateGroupInfo"

.field public static final KEY_OBJ_ATTR:Ljava/lang/String; = "attribute"

.field public static final KEY_OBJ_ATTRS:Ljava/lang/String; = "attributes"

.field public static final KEY_OBJ_FLAG:Ljava/lang/String; = "flag"

.field public static final KEY_OBJ_FLAGS:Ljava/lang/String; = "flags"

.field public static final KEY_ROOT_UPDATE:Ljava/lang/String; = "objectUpdate"

.field public static final LOG_TAG:Ljava/lang/String; = "RcsUpdateObj"


# instance fields
.field private mAttributeMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private mFlagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonObj:Lorg/json/JSONObject;

.field private mObjectType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/Attribute;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "RcsUpdateObj"

    const-string v1, "message atrribute is not null"

    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->hasMiscAttrs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GROUPINFO"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mObjectType:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getAttrMap()Ljava/util/Map;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;

    .line 20
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->hasMiscAttrs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private encodeGroupInfoUpdateJSON()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v3, "updateGroupInfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private encodeObjectUpdateJSON()V
    .locals 14

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    move v2, v3

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "flag"

    .line 9
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flags"

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 13
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v3

    .line 14
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 15
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 16
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mAttributeMaps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 17
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 18
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 19
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 20
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 21
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    array-length v10, v9

    move v11, v3

    :goto_3
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 22
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 23
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 24
    :cond_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    const-string v9, "name"

    .line 25
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "value"

    .line 26
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const-string v3, "attribute"

    .line 28
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "attributes"

    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "objectUpdate"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void
.end method


# virtual methods
.method public addFlagToList(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFlagToList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mFlagList:Ljava/util/List;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public encodeJSON()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mObjectType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mObjectType:Ljava/lang/String;

    const-string v1, "GROUPINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->encodeGroupInfoUpdateJSON()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->encodeObjectUpdateJSON()V

    :goto_0
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
