.class public Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;
.super Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;
.source "PushInterpreterRcs.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushInterpretRcs"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    return-void
.end method


# virtual methods
.method public handleChangedBIObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleChangedBIObj: handleChangedBIObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushInterpretRcs"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->getBotServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->isLatestObject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "eventTypeServer"

    .line 6
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "GetRequest"

    .line 7
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsUpdate(Z)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    const-string v2, "eventTypeDb"

    .line 13
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    const-string v2, "UpdateRequest"

    .line 14
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->getCif()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setCif(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setTimeStamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->getBotServiceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setBotServiceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_0
    return-void
.end method

.method public handleChangedContactObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleChangedContactObj: changedContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->getChangedNumberList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushInterpretRcs"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "eventTypeDb"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "UpdateContactRequest"

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->getChangedNumberList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setNumberList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->getChangedContactList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setContactList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public handleChangedGIObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleChangedGIObj: handleChangedGIObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushInterpretRcs"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getGroupChatId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->existsInGroupTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "eventTypeServer"

    .line 7
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "GetRequest"

    .line 8
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsUpdate(Z)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getGroupChatId()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getMystatus()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setMystatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getStTimestamp()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setStTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    const-string v3, "eventTypeDb"

    .line 28
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    const-string v3, "UpdateRequest"

    .line 29
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->getGroupChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsGroupInfoAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_0
    return-void
.end method

.method public handleChangedObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;)V
    .locals 13

    const-string v0, "PushInterpretRcs"

    const-string v1, "handleChangedObj"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getFlagList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getUploadStatus()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LastModSeq "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 9
    new-instance v7, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;-><init>(Ljava/util/Map;)V

    :cond_1
    if-eqz v4, :cond_9

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v8

    const-string v9, "finished"

    const-string v10, "upload_status"

    if-eqz v8, :cond_4

    const-string v2, "Device is PD. notify PayloadNotify to App"

    .line 11
    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v1, v10, v2, v5}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadStatus from db = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "UPLOAD_FINISHED already present in DB. do not notify App"

    .line 16
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "notify PayloadNotify to App"

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rcs"

    .line 22
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aput-object v1, v8, v3

    const-string v9, "correlation_tag=?"

    .line 23
    invoke-virtual {v5, v6, v2, v9, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update upload success: coTag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " updateSuccess = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v7}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsUpdate(Z)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {v0, v3, p1, v4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->onReceivingPayloadNotify(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 29
    :cond_4
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 30
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v8

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v11

    .line 32
    invoke-virtual {v8, v11}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 33
    sget-object v11, Lcom/samsung/android/mdeccommon/log/Label;->NMS_NOTIFY:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v8, v11}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 34
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v11

    const-string v12, "file_path"

    .line 36
    invoke-virtual {v1, v12, v8, v11}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 38
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 39
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    .line 40
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v2, "ft-message"

    .line 41
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    const-string v5, "eventTypeServer"

    .line 45
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    const-string v5, "GetRcsPayloadRequest"

    .line 46
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "payload_url"

    .line 49
    invoke-virtual {v1, v7, v5, v6}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setPayloadUploadStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 56
    invoke-static {v3}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsUpdate(Z)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    :cond_6
    const-string v2, "Other SDs have requested for Download."

    .line 58
    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    invoke-virtual {v0, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {v1, v0, v2, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateBufferDB(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string v1, "unavailable"

    .line 63
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v4, "file_unavailable"

    goto :goto_3

    .line 64
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filepath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    const-string v1, "eventTypeDb"

    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    const-string v1, "UpdateRequest"

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setPayloadUploadStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getResourceURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setLastModSeq(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public handleDeletedBIObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;)V
    .locals 0

    return-void
.end method

.method public handleDeletedContactObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeletedContactObj: deletedContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;->getDeletedNumberList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushInterpretRcs"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "eventTypeDb"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "DeleteContactRequest"

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;->getDeletedNumberList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setNumberList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public handleDeletedObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;)V
    .locals 2

    const-string v0, "PushInterpretRcs"

    const-string v1, "handleDeletedObj"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    const-string v1, "eventTypeDb"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    const-string v1, "DeleteRequest"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getResourceURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public handleRelayDataObj(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleRelayDataObj(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V

    return-void
.end method

.method public handleRelayRequestObj(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleRelayRequestObj(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V

    return-void
.end method

.method public handleRelayResponseObj(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleRelayResponseObj(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V

    return-void
.end method

.method public handleStateMsgObj(Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterRcs;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleGroupStateMsg(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V

    return-void
.end method
