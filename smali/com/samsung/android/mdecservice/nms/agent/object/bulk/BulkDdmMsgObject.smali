.class public Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;
.super Ljava/lang/Object;
.source "BulkDdmMsgObject.java"


# static fields
.field public static final KEY_OBJ_DDM_RESURL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_ROOT_DDM_MESSAGELIST:Ljava/lang/String; = "ddmMsgList"


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;->mSyncList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;->mSyncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ddmMsg"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 5
    move-object v5, v3

    check-cast v5, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    .line 6
    new-instance v6, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;

    invoke-direct {v6}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;-><init>()V

    .line 7
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmMsg()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->setDdmMsg([B)V

    .line 8
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->setDdmType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->encodeJSON()V

    .line 10
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "resourceURL"

    .line 11
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "ddmMsgList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
