.class public Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;
.super Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;
.source "PushInterpreterMessage2.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushInterpretMessage2"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

.field private mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;

.field private mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 4
    check-cast p3, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->initSyncEventBucket()V

    return-void
.end method

.method private initSyncEventBucket()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v1, "eventTypeDb"

    const-string v2, "eventTypeMessage"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    return-void
.end method


# virtual methods
.method public handleChangedObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "PushInterpretMessage2"

    const-string v2, "handleChangedObj"

    .line 1
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getResourceURL()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getFlagList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getFlagList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    const-string v2, "correlationTAG, correlationID both are null."

    .line 7
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v9, "\\Pending"

    .line 8
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "UpdateRequest"

    const-string v12, "eventTypeDb"

    if-nez v10, :cond_4

    const-string v10, "\\Delivered"

    .line 9
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v10

    .line 11
    sget-object v13, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v6, "same resourceURL event already came"

    .line 12
    invoke-static {v1, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    new-instance v7, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;-><init>(Ljava/util/Map;)V

    .line 15
    :cond_2
    invoke-virtual {v10, v12}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v11}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 23
    sget-object v3, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 24
    :cond_3
    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v10

    .line 25
    sget-object v13, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    invoke-interface {v13, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getUploadStatus()Ljava/lang/String;

    move-result-object v10

    const-string v13, "GetRequest"

    const-string v14, "eventTypeServer"

    if-eqz v5, :cond_7

    .line 27
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v10, :cond_5

    if-eqz v10, :cond_7

    .line 28
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v9

    if-nez v9, :cond_7

    .line 29
    :cond_5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v2, "Device is not PD, Ignore PENDING msg"

    .line 30
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v5, "handleChangedObj: get new data from the server for relay"

    .line 31
    invoke-static {v1, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v14}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v13}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto/16 :goto_1

    .line 40
    :cond_7
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "resourceURL"

    .line 41
    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "correlationTag"

    .line 42
    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "correlationId"

    .line 43
    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v10, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v15, v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mContext:Landroid/content/Context;

    invoke-direct {v10, v15}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v10, v9}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "unknown"

    .line 46
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    if-eqz v8, :cond_8

    iget-object v15, v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 47
    invoke-virtual {v15, v9, v2, v8}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->isDuplicatedLastModSeq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 48
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_8
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "rcs"

    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 51
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;

    move-object/from16 v8, p1

    invoke-virtual {v1, v8}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;->handleChangedObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;)V

    return-void

    :cond_9
    move-object/from16 v8, p1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 53
    new-instance v7, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;-><init>(Ljava/util/Map;)V

    :cond_a
    const-string v8, "handleChangedObj: update existing data"

    .line 54
    invoke-static {v1, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v12}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v11}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 64
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v6}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventMsgUpdate(Z)V

    goto :goto_1

    .line 66
    :cond_b
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v14}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v13}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 73
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_1
    return-void
.end method

.method public handleDdmMsgObj(Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;)V
    .locals 5

    const-string v0, "PushInterpretMessage2"

    const-string v1, "handleDdmMsgObj"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getType()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getMessage()[B

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;-><init>()V

    const-string v3, "eventTypeDb"

    .line 5
    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v3

    const-string v4, "DdmMsgPushReceived"

    .line 6
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setDdmMsg([B)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getResourceURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setDdmType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "ddmType or ddmMsg is null."

    .line 12
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleDeletedObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;)V
    .locals 7

    const-string v0, "PushInterpretMessage2"

    const-string v1, "handleDeletedObj: "

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getResourceURL()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    const-string p1, "correlationTAG, correlationID both are null."

    .line 5
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "resourceURL"

    .line 7
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "correlationTag"

    .line 8
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "correlationId"

    .line 9
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v5, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "unknown"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "rcs"

    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mPushInterpreterRcs:Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;->handleDeletedObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;)V

    return-void

    .line 15
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "SD device doesn\'t handle delete push for legacy"

    .line 16
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "handleDeletedObj: delete existing data"

    .line 17
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    const-string v0, "eventTypeDb"

    .line 19
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    const-string v0, "DeleteRequest"

    .line 20
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public publishSyncEventList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->mSyncEventListBucket:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterMessage2;->initSyncEventBucket()V

    return-void
.end method
