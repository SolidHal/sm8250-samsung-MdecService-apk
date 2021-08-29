.class public Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;
.super Ljava/lang/Object;
.source "DeletedBotInfoObject.java"


# static fields
.field public static final KEY_OBJ_BOT_SERVICEID:Ljava/lang/String; = "botserviceId"

.field public static final KEY_OBJ_RESOURCE_URL:Ljava/lang/String; = "resourceURL"


# instance fields
.field private mBotServiceId:Ljava/lang/String;

.field private mResourceURL:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "botserviceId"

    const-string v1, "resourceURL"

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;->mResourceURL:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;->mBotServiceId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
