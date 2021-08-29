.class public Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;
.super Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;
.source "PushInterpreterCalllog.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PushInterpretCalllog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterBase;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    return-void
.end method


# virtual methods
.method public handleChangedObj(Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;)V
    .locals 12

    const-string v0, "PushInterpretCalllog"

    const-string v1, "handleChangedObj:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getResourceURL()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getFlagList()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getAttrMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getLastActivatedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v2, v2, v10

    if-gez v2, :cond_1

    const-string p1, "old data. don\'t receive it"

    .line 10
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {v2, v1, v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    const-string v1, "handleChangedObj: update existing data"

    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->tryUpdateCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;I)I

    .line 14
    invoke-static {v9}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventLogUpdate(Z)V

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_5

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {p1, v1, v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryBufferDBwithCorrelationTag(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangedObj: cs count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 v1, 0x2

    if-le p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "handleChangedObj: get new data from the server"

    .line 19
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    const-string v0, "eventTypeServer"

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    const-string v0, "GetRequest"

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public handleDeletedObj(Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;)V
    .locals 4

    const-string v0, "PushInterpretCalllog"

    const-string v1, "handleDeletedObj: "

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "SD device doesn\'t handle delete push"

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getResourceURL()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "handleDeletedObj: delete existing data"

    .line 8
    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    const-string v2, "eventTypeDb"

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    const-string v2, "DeleteRequest"

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushInterpreterCalllog;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_1
    return-void
.end method
