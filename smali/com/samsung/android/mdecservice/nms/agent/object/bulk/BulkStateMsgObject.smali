.class public Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;
.super Ljava/lang/Object;
.source "BulkStateMsgObject.java"


# static fields
.field public static final KEY_ROOT_STATEMSG_LIST:Ljava/lang/String; = "stateMsgList"


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;->mSyncList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;->mSyncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "stateMsg"

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 5
    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    .line 6
    new-instance v5, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsGroupAttributeList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;-><init>(Ljava/util/List;)V

    .line 7
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeJSON()V

    .line 8
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "stateMsgList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
