.class public Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;
.super Ljava/lang/Object;
.source "BulkBotInfoPostObject.java"


# static fields
.field public static final KEY_OBJ_BOT_INFO:Ljava/lang/String; = "BIObject"

.field public static final KEY_ROOT_BOT_INFO_LIST:Ljava/lang/String; = "BIObjectList"


# instance fields
.field private mJsonObj:Lorg/json/JSONObject;

.field private mSyncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;->mSyncList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 7

    const-string v0, "botInfoObject"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;->mSyncList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 5
    check-cast v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    .line 6
    new-instance v5, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;

    invoke-direct {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;-><init>()V

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBotServiceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->setBotServiceId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->setTimeStamp(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getCif()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->setCif(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->encodeJSON()V

    .line 11
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v0, "BIObject"

    .line 13
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "BIObjectList"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
