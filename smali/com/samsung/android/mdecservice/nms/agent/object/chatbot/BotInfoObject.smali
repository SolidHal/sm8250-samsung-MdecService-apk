.class public Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;
.super Ljava/lang/Object;
.source "BotInfoObject.java"


# static fields
.field public static final KEY_OBJ_BOT_SERVICEID:Ljava/lang/String; = "botserviceId"

.field public static final KEY_OBJ_CIF:Ljava/lang/String; = "CIF"

.field protected static final KEY_OBJ_RESOURCE_URL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_OBJ_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_ROOT_BOT_INFO_OBJ:Ljava/lang/String; = "botInfoObject"

.field public static final LOG_TAG:Ljava/lang/String; = "BotInfoObject"


# instance fields
.field private mBotServiceId:Ljava/lang/String;

.field private mCif:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mJsonStr:Ljava/lang/String;

.field private mResourceURL:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mJsonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "botserviceId"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mBotServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "CIF"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mCif:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "botInfoObject"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getBotServiceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mCif:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getObjectID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mResourceURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON()V
    .locals 5

    const-string v0, "resourceURL"

    const-string v1, "botInfoObject"

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mResourceURL:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->parseJSONEle(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public parseJSONEle(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "botserviceId"

    const-string v1, "timestamp"

    const-string v2, "CIF"

    const-string v3, "resourceURL"

    .line 1
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mResourceURL:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mCif:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mTimeStamp:Ljava/lang/String;

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mBotServiceId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBotServiceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mBotServiceId:Ljava/lang/String;

    return-void
.end method

.method public setCif(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mCif:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->mTimeStamp:Ljava/lang/String;

    return-void
.end method
