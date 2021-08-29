.class public Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;
.super Ljava/lang/Object;
.source "RelayRequestObject.java"


# static fields
.field public static final KEY_OBJ_FROM:Ljava/lang/String; = "from"

.field public static final KEY_OBJ_REQUEST:Ljava/lang/String; = "request"

.field public static final KEY_OBJ_REQUEST_ID:Ljava/lang/String; = "id"

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

.field private mLastUpdateTime:J

.field private mRelayType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mContactList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mContactList:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getRelayType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mRelayType:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "id"

    const-string v1, "request"

    const-string v2, "type"

    const-string v3, "from"

    .line 1
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mDeviceId:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mRelayType:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rcscapa_search"

    .line 7
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mRelayType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mLastUpdateTime:J

    goto :goto_1

    .line 9
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 11
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    new-instance v3, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 14
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->mContactList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
