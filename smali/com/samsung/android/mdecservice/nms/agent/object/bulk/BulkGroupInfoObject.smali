.class public Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;
.super Ljava/lang/Object;
.source "BulkGroupInfoObject.java"


# static fields
.field public static final KEY_OBJ_GROUPINFO_OBJECT:Ljava/lang/String; = "GIObject"

.field public static final KEY_ROOT_GROUPINFO_LIST:Ljava/lang/String; = "GIObjectList"


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;->mSyncList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 6

    const-string v0, "groupInfoObject"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;->mSyncList:Ljava/util/List;

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
    check-cast v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    .line 6
    new-instance v5, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsGroupAttributeList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;-><init>(Ljava/util/List;)V

    .line 8
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeJSON()V

    .line 9
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v0, "GIObject"

    .line 11
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "GIObjectList"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
