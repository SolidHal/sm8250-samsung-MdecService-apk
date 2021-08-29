.class public Lcom/samsung/android/mdecservice/nms/push/PushHandler;
.super Ljava/lang/Object;
.source "PushHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

.field private mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

.field private mPushInterpreterCall:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;

.field private mPushInterpreterMsg:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

.field private mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mContext:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterCall:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;

    .line 6
    new-instance p1, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    .line 7
    new-instance p2, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterMsg:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

    .line 8
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    return-void
.end method

.method private handleChangedObjList(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleChangedObjList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "eventTypeMessage"

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterMsg:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->handleChangedObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->OBJECT_PUSH:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->startLogger(Ljava/lang/String;Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->PUSH:Lcom/samsung/android/mdeccommon/log/Label;

    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    goto :goto_0

    :cond_1
    const-string v1, "eventTypeCall"

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterCall:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->handleChangedObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterMsg:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->publishSyncEventList()V

    :cond_3
    return-void
.end method

.method private handleDdmObjList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;

    const-string v1, "eventTypeMessage"

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterMsg:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->handleDdmMsgObj(Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDeletedObjList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeletedObjList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "eventTypeMessage"

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterMsg:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->handleDeletedObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;)V

    goto :goto_0

    :cond_1
    const-string v1, "eventTypeCall"

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterCall:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->handleDeletedObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterMsg:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->publishSyncEventList()V

    :cond_3
    return-void
.end method


# virtual methods
.method public handlDoRetrievePushNotification(Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->getIndex()Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlDoRetrievePushNotification: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pMsgRelayDate="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PushHandler"

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/push/PushHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/push/PushHandler$1;-><init>(Lcom/samsung/android/mdecservice/nms/push/PushHandler;)V

    const-string v2, "GetRequest"

    invoke-interface {p1, v0, v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method

.method public handleNmsPushNotification(Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getCallBackData()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getIndex()Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNmsPushNotification: callbackData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pMsgRelayDate="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PushHandler"

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getDeletedObjectsList()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getChangedObjectsList()Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getChangedConactsList()Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getDeletedContactsList()Ljava/util/List;

    move-result-object v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getChangedGroupInfoObjectsList()Ljava/util/List;

    move-result-object v7

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getStateMsgObjectsList()Ljava/util/List;

    move-result-object v8

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getDdmMsgObjectsList()Ljava/util/List;

    move-result-object v9

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getRelayDataObjectsList()Ljava/util/List;

    move-result-object v10

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getRelayRequestObjectsList()Ljava/util/List;

    move-result-object v11

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getRelayResponseObjectsList()Ljava/util/List;

    move-result-object v12

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getChangedBotInfoObjectsList()Ljava/util/List;

    move-result-object v13

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getDeletedBotInfoObjectsList()Ljava/util/List;

    move-result-object v14

    .line 17
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 18
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v14

    const-string v14, "deletedObjectList Size= "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {v0, v2, v1}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handleDeletedObjList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v14

    .line 20
    :goto_0
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "changedObjectList Size= "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {v0, v4, v1}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handleChangedObjList(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    :cond_1
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->recordPushHistoryForGio(Ljava/lang/String;)V

    .line 25
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "changedGIObj = "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v7, v4}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleChangedGIObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changedContactList Size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;

    .line 31
    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleChangedContactObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;)V

    goto :goto_2

    .line 32
    :cond_3
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletedContactList Size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;

    .line 35
    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleDeletedContactObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;)V

    goto :goto_3

    .line 36
    :cond_4
    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ddmMsgObjectList Size= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {v0, v9, v1}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handleDdmObjList(Ljava/util/List;Ljava/lang/String;)V

    .line 39
    :cond_5
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateMsgObjectList Size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;

    .line 42
    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v4, v2}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleStateMsgObj(Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;)V

    goto :goto_4

    .line 43
    :cond_6
    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 44
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->recordPushHistoryForRelayData(Ljava/lang/String;)V

    .line 48
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relayDataObjectList Size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;

    .line 50
    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v4, v2}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleRelayDataObj(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V

    goto :goto_5

    .line 51
    :cond_8
    invoke-static {v11}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relayRequestObjectList Size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;

    .line 54
    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v4, v2}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleRelayRequestObj(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V

    goto :goto_6

    .line 55
    :cond_9
    invoke-static {v12}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relayResponseObjectList Size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;

    .line 58
    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v4, v2}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleRelayResponseObj(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V

    goto :goto_7

    .line 59
    :cond_a
    invoke-static {v13}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changedBotInfoObjectList Size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;

    .line 62
    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v4, v2}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleChangedBIObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;)V

    goto :goto_8

    .line 63
    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletedBotInfoObjectList Size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;

    .line 66
    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;

    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->handleDeletedBIObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;)V

    goto :goto_9

    :cond_c
    return-void
.end method

.method public handleRelayNotiPushNotification(Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getCallBackData()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getIndex()Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->isDoRetrieveObject()Z

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRelayNotiPushNotification: callbackData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pMsgRelayDate="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDoRetrieveObj="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->isDoRetrieveObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getDoRetrieveDest()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msgAppSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    const-string v0, "eventTypeServer"

    .line 9
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    const-string v0, "GetMsgAppSettingRequest"

    .line 10
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "eventTypeDb"

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "CurrentNotiPushReceived"

    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getNotifications()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setNotiList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isSaRegistered(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "eventTypeMessage"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->isSaRegistered(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "eventTypeCall"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->isSaRegistered(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
