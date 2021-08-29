.class public Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;
.super Ljava/lang/Object;
.source "RelayResponseObject.java"


# static fields
.field public static final KEY_OBJ_RESPONSE:Ljava/lang/String; = "response"

.field public static final KEY_OBJ_RESPONSE_AVAILABLE:Ljava/lang/String; = "available"

.field public static final KEY_OBJ_RESPONSE_FEATURES:Ljava/lang/String; = "features"

.field public static final KEY_OBJ_RESPONSE_ID:Ljava/lang/String; = "id"

.field public static final KEY_OBJ_RESPONSE_TIME:Ljava/lang/String; = "time"

.field public static final KEY_OBJ_TO:Ljava/lang/String; = "to"

.field public static final KEY_OBJ_TYPE:Ljava/lang/String; = "type"

.field public static final LOG_TAG:Ljava/lang/String; = "RelayRequestObj"


# instance fields
.field private mContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mRcsEnabled:Z

.field private mRelayType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mContactList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mContactList:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mRcsEnabled:Z

    return v0
.end method

.method public getRelayType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mRelayType:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "available"

    const-string v1, "time"

    const-string v2, "features"

    const-string v3, "id"

    const-string v4, "response"

    const-string v5, "type"

    const-string v6, "to"

    .line 1
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mDeviceId:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mRelayType:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "rcs_enabled"

    .line 7
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mRelayType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "true"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    iput-boolean v5, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mRcsEnabled:Z

    goto :goto_1

    .line 9
    :cond_3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v5, p1, :cond_8

    .line 11
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 13
    new-instance v6, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 14
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 16
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 17
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setFeatures(J)V

    .line 18
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 20
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setLastUpdateTime(J)V

    .line 21
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 23
    invoke-virtual {v6, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setAvailable(Z)V

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->mContactList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
