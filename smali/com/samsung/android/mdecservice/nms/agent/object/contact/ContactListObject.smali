.class public Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;
.super Ljava/lang/Object;
.source "ContactListObject.java"


# static fields
.field public static final KEY_OBJ_CAPA:Ljava/lang/String; = "capa"

.field public static final KEY_OBJ_CONATACT:Ljava/lang/String; = "contact"

.field public static final KEY_OBJ_EXPIRY:Ljava/lang/String; = "expiry"

.field public static final KEY_OBJ_ID:Ljava/lang/String; = "id"

.field public static final KEY_OBJ_PD:Ljava/lang/String; = "pd"

.field public static final KEY_OBJ_RCSUSER:Ljava/lang/String; = "rcsuser"

.field public static final KEY_ROOT_CONTACTLIST:Ljava/lang/String; = "contactList"

.field public static final LOG_TAG:Ljava/lang/String; = "ContactListObj"


# instance fields
.field private mContactCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonObj:Lorg/json/JSONObject;

.field protected mJsonStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mContactCapabilities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mJsonStr:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mContactCapabilities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mContactCapabilities:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mContactCapabilities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "id"

    if-nez v5, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pd"

    .line 10
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->isPd()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "rcsuser"

    .line 11
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->isRcsUser()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "capa"

    .line 12
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->getCapabilityFeatures()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "expiry"

    .line 13
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->getExpiryDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :goto_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "contact"

    .line 15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "contactList"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getContactCapabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mContactCapabilities:Ljava/util/List;

    return-object v0
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public parseJSON()V
    .locals 10

    const-string v0, "capa"

    const-string v1, "expiry"

    const-string v2, "rcsuser"

    const-string v3, "pd"

    const-string v4, "id"

    const-string v5, "contact"

    const-string v6, "contactList"

    .line 1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 4
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 6
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 7
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 8
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 9
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    new-instance v9, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;

    invoke-direct {v9, v8}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 12
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v9, v8}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setPd(Z)V

    .line 13
    :cond_0
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v9, v8}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setRcsUser(Z)V

    .line 15
    :cond_1
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 16
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setExpiryDate(Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 18
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setCapabilityFeatures(Ljava/lang/Long;)V

    .line 19
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mContactCapabilities:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public setContactCapabilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->mContactCapabilities:Ljava/util/List;

    return-void
.end method
