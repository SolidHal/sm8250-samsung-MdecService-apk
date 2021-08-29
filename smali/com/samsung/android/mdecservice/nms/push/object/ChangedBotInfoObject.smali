.class public Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;
.super Ljava/lang/Object;
.source "ChangedBotInfoObject.java"


# static fields
.field public static final KEY_OBJ_BOT_SERVICEID:Ljava/lang/String; = "botserviceId"

.field public static final KEY_OBJ_CIF:Ljava/lang/String; = "CIF"

.field public static final KEY_OBJ_RESOURCE_URL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_OBJ_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final LOG_TAG:Ljava/lang/String; = "ChagedBIObj"


# instance fields
.field private mBotServiceId:Ljava/lang/String;

.field private mCif:Ljava/lang/String;

.field private mResourceURL:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBotServiceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mCif:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "botserviceId"

    const-string v1, "CIF"

    const-string v2, "timestamp"

    const-string v3, "resourceURL"

    .line 1
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mResourceURL:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mTimeStamp:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mCif:Ljava/lang/String;

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->mBotServiceId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
