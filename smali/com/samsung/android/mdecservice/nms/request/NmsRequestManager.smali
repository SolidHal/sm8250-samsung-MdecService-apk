.class public Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;
.super Landroid/os/Handler;
.source "NmsRequestManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RequestMgr"

.field private static final MAXIMUM_REQUEST_OBJECT_ENTRIES:I = 0x190


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

.field private mRequestObjects:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mResolver:Landroid/content/ContentResolver;

    .line 6
    new-instance p2, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager$1;-><init>(Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 9
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static sendDdmMsg(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
    .locals 2

    const-string v0, "RequestMgr"

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "sendDdmMsg"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "PostDdmMsgRequest"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setDdmType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p0

    const-string v0, "alert_message"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setDdmMsg([B)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Bundle from app or resource url is null"

    .line 9
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private sendDdmRequest(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDdmMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", list size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RequestMgr"

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v5, "eventTypeServer"

    const-string v6, "eventTypeMessage"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setRelayResponse()V

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->writeResult(Z)V

    .line 8
    :cond_0
    new-instance v5, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move v14, v7

    .line 9
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_5

    move-object/from16 v15, p2

    .line 10
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/os/Bundle;

    const-string v7, "correlation_tag"

    .line 11
    invoke-virtual {v13, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "correlation_id"

    .line 12
    invoke-virtual {v13, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "res_url"

    .line 13
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const-string v7, "bulk_ddm"

    .line 14
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v2, "data_type"

    .line 15
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bundle ddm dataType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v7, "rcs"

    .line 17
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 18
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ddm"

    const-string v8, ""

    .line 19
    invoke-static {v6, v7, v8, v8}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v7, v5

    move-object v6, v13

    move-object/from16 v13, v16

    .line 21
    invoke-virtual/range {v7 .. v13}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBForCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x2bc

    const-string v10, "result"

    if-nez v8, :cond_4

    .line 23
    invoke-static {v2, v6, v7}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->sendDdmMsg(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 24
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xc8

    .line 25
    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v7, "resURL is null."

    .line 29
    invoke-static {v3, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 32
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 33
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_6
    return-object v1
.end method


# virtual methods
.method public composeNotifyResultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    if-eq p5, v1, :cond_0

    const-string v1, "failure_reason"

    .line 2
    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p5, "correlation_tag"

    .line 3
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "correlation_id"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "service_id"

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    .line 6
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getRequestObject()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getCallbackList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleSuccessResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    :cond_2
    move-object v5, v6

    .line 7
    invoke-static {p5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleFailureResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    :cond_3
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p2, v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 10
    :cond_4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RequestObject doesn\'t contain key TransactionID = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestMgr"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleFailedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    const-string v0, "RequestMgr"

    if-eqz p4, :cond_2

    .line 1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->composeNotifyResultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getCallbackList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {p1, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getRequestType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "post"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Device is SD. Do not notify PostCompleted to App"

    .line 8
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getCallbackList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p4, p2, p2, p1}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 10
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RequestObject doesn\'t contain key TransactionID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleFailureResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1
    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getRequestType()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getDataType()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 4
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "update"

    .line 6
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "?)"

    const-string v14, "cif"

    const-string v15, "post"

    const-string v5, "delete"

    const-string v3, "?,"

    const-string v4, "\u0000"

    const-string v6, "correlation_id"

    move-object/from16 p1, v12

    const/4 v12, 0x1

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "service_id=?"

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correlation_tag in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    .line 11
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v8, v16, -0x1

    new-array v8, v8, [C

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?) OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    .line 12
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v12

    new-array v8, v8, [C

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res_url in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    .line 14
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v12

    new-array v8, v8, [C

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v8, v2

    :goto_3
    const/16 v16, 0x0

    move/from16 v3, v16

    .line 16
    :goto_4
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const v2, -0x31ffc737    # -5.3780128E8f

    const v12, -0x4f997a55

    const/16 v17, -0x1

    const/4 v1, 0x2

    if-ge v3, v0, :cond_d

    .line 17
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v12, :cond_7

    if-eq v0, v2, :cond_6

    const v2, 0x3498a0

    if-eq v0, v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v0, v16

    goto :goto_6

    :cond_7
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v0, v17

    :goto_6
    const-string v2, "service_id"

    const-string v12, "correlation_tag"

    move-object/from16 p3, v5

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    if-eq v0, v5, :cond_c

    if-eq v0, v1, :cond_9

    goto :goto_8

    .line 18
    :cond_9
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v2

    goto :goto_7

    .line 19
    :cond_a
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v12

    goto :goto_7

    :cond_b
    move-object v0, v6

    .line 20
    :goto_7
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 21
    :cond_c
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "res_url"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    aput-object v0, v4, v3

    .line 23
    :goto_8
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v2, "result_code"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object v2, v5

    move/from16 v19, v3

    move-object v3, v12

    move-object v12, v4

    move/from16 v4, v17

    move-object/from16 v20, p3

    move/from16 v5, v18

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->composeNotifyResultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 v3, p5

    .line 28
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v19, 0x1

    move v3, v0

    move-object v4, v12

    move-object/from16 v5, v20

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_d
    move-object/from16 v3, p5

    move-object v0, v4

    move-object/from16 v20, v5

    .line 29
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-eq v4, v12, :cond_10

    if-eq v4, v2, :cond_f

    const v2, 0x3498a0

    if-eq v4, v2, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    goto :goto_a

    :cond_f
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move/from16 v2, v16

    goto :goto_a

    :cond_10
    move-object/from16 v2, v20

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    move/from16 v2, v17

    :goto_a
    if-eqz v2, :cond_14

    const/4 v4, 0x1

    if-eq v2, v4, :cond_14

    if-eq v2, v1, :cond_12

    move-object/from16 v1, p0

    move/from16 v0, v16

    move v2, v0

    goto :goto_b

    :cond_12
    move-object/from16 v0, p1

    .line 30
    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 32
    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 34
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v8, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int v0, v16, v0

    move v2, v0

    move/from16 v0, v16

    goto :goto_b

    :cond_14
    move-object/from16 v1, p0

    .line 35
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "sync_status"

    const-string v5, ""

    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v8, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int v0, v16, v0

    move/from16 v2, v16

    .line 38
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFailureResponse, updatedRows = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deletedRows = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RequestMgr"

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public handleSuccessResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1
    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getRequestType()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getDataType()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p2

    move-object/from16 v9, p3

    :goto_0
    const-string v11, "update"

    .line 4
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v12, "delete"

    const/4 v13, 0x1

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res_url in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    .line 7
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const-string v2, "\u0000"

    const-string v3, "?,"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    :goto_2
    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 9
    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "sync_status"

    const v5, -0x31ffc737    # -5.3780128E8f

    const v14, -0x4f997a55

    const/16 v16, -0x1

    if-ge v15, v3, :cond_d

    .line 10
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v3, v14, :cond_5

    if-eq v3, v5, :cond_4

    const v5, 0x3498a0

    if-eq v3, v5, :cond_3

    goto :goto_4

    :cond_3
    const-string v3, "post"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_5

    :cond_4
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v3, v16

    :goto_5
    const-string v5, "service_id"

    const-string v14, "correlation_tag"

    const-string v13, "correlation_id"

    move-object/from16 v18, v1

    const-string v1, "res_url"

    if-eqz v3, :cond_c

    move-object/from16 v19, v12

    const/4 v12, 0x1

    if-eq v3, v12, :cond_b

    const/4 v12, 0x2

    if-eq v3, v12, :cond_7

    move-object/from16 v17, v11

    goto/16 :goto_8

    :cond_7
    const-string v0, "cif"

    .line 11
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v5

    goto :goto_6

    .line 12
    :cond_8
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v14

    goto :goto_6

    :cond_9
    move-object v0, v13

    .line 13
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "=?"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v11

    const/4 v12, 0x1

    new-array v11, v12, [Ljava/lang/String;

    .line 14
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v11, v12

    .line 15
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 16
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "object_id"

    .line 19
    invoke-virtual {v0, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Posted"

    .line 20
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v4, "lastmodseq"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_a

    .line 23
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_a
    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0, v3, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    move v12, v2

    move-object/from16 v18, v3

    goto :goto_9

    :cond_b
    move-object/from16 v17, v11

    goto :goto_7

    :cond_c
    move-object/from16 v17, v11

    move-object/from16 v19, v12

    .line 25
    :goto_7
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    aput-object v1, v0, v15

    :goto_8
    move-object v11, v0

    move v12, v2

    .line 27
    :goto_9
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    const/4 v5, -0x1

    move-object/from16 v0, p0

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->composeNotifyResultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 31
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object v0, v11

    move v2, v12

    move-object/from16 v11, v17

    move-object/from16 v1, v18

    move-object/from16 v12, v19

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v18, v1

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    .line 32
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v14, :cond_f

    if-eq v1, v5, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v1, v17

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v1, v19

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_b

    :cond_10
    :goto_a
    move/from16 v1, v16

    :goto_b
    const-string v3, "RequestMgr"

    if-eqz v1, :cond_12

    const/4 v5, 0x1

    if-eq v1, v5, :cond_11

    const/4 v14, 0x0

    goto :goto_c

    .line 33
    :cond_11
    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v7, v18

    invoke-virtual {v1, v4, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    add-int v14, v1, v0

    goto :goto_c

    :cond_12
    move-object/from16 v7, v18

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 34
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "read"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "Updated"

    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v4, v6, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v7, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatedRows from BufferDB for success  = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v1

    .line 39
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSuccessResponse, updatedRows = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deletedRows = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RequestMgr"

    const-string v1, "notifyRequestToServerResult"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getRequestList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getDataType()Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->getRequestType()Ljava/lang/String;

    move-result-object p3

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transactionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dataType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callbackList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callbackList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "transactionId is null or RequestObjectdoesn\'t contain tid. Do not notify to App."

    .line 17
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object v5, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestToServer: transactionId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rcs"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    .line 3
    new-instance v11, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;

    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const/4 v5, 0x0

    const-string v3, "rcs"

    move-object v0, v11

    move-object v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>()V

    invoke-virtual {v11, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/BundleHelper;->getMessageContext(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;

    iget-object v2, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v3, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    iget-object v4, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Landroid/content/Context;)V

    invoke-virtual {v1, p1, v9, v0}, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->getRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>()V

    invoke-virtual {v11, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0, v6}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->prepare(Ljava/util/List;)V

    return-void

    .line 10
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isDdmMsg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "bulk_ddm"

    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_3

    .line 15
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->sendDdmRequest(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_4
    invoke-direct {p0, p2, v6}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->sendDdmRequest(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 18
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback DDM list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1, p2, v9, v0}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    return-void

    :cond_6
    const-string v0, "cif"

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "post"

    const-string v3, "delete"

    if-eqz v0, :cond_a

    .line 23
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "M0003_CHAT_BOT not satisfied"

    .line 24
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v6, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;

    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const/4 v5, 0x0

    const-string v3, "cif"

    move-object v0, v6

    move-object v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 27
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    new-instance v10, Lcom/samsung/android/mdecservice/nms/request/BioPostRequestObject;

    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/BioPostRequestObject;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 30
    new-instance v10, Lcom/samsung/android/mdecservice/nms/request/BioDeleteRequestObject;

    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/BioDeleteRequestObject;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 31
    :cond_9
    :goto_2
    invoke-virtual {v0, v9}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->setRequestType(Ljava/lang/String;)V

    .line 32
    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->prepareSyncEvent()V

    return-void

    :cond_a
    const/4 v0, -0x1

    .line 34
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x4f997a55

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v1, v4, :cond_d

    const v3, -0x31ffc737    # -5.3780128E8f

    if-eq v1, v3, :cond_c

    const v3, 0x3498a0

    if-eq v1, v3, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_c
    const-string v1, "update"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v10, v11

    goto :goto_4

    :cond_d
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v10, v12

    goto :goto_4

    :cond_e
    :goto_3
    move v10, v0

    :goto_4
    if-eqz v10, :cond_11

    if-eq v10, v12, :cond_10

    if-eq v10, v11, :cond_f

    goto :goto_5

    .line 35
    :cond_f
    new-instance v10, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;

    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 36
    invoke-virtual {v10, v9}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->setRequestType(Ljava/lang/String;)V

    .line 37
    iget-object v0, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->makeUpdateRequestForMsg()V

    goto :goto_5

    .line 39
    :cond_10
    new-instance v10, Lcom/samsung/android/mdecservice/nms/request/DeleteRequestObject;

    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/DeleteRequestObject;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 40
    invoke-virtual {v10, v9}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->setRequestType(Ljava/lang/String;)V

    .line 41
    iget-object v0, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/request/DeleteRequestObject;->makeDeleteRequestForMsg()V

    goto :goto_5

    .line 43
    :cond_11
    new-instance v10, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;

    iget-object v1, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-object v0, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 44
    invoke-virtual {v10, v9}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->setRequestType(Ljava/lang/String;)V

    .line 45
    iget-object v0, v7, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->mRequestObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v10, v12}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->makePostRequestForMsg(Z)V

    :goto_5
    return-void
.end method
