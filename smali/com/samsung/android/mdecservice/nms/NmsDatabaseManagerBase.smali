.class public abstract Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;
.super Landroid/os/Handler;
.source "NmsDatabaseManagerBase.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;,
        Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$CalllogSubscriptionListener;
    }
.end annotation


# static fields
.field public static final EVENT_SYNC_BUFFER_DB:I = 0x32

.field public static final EVENT_SYNC_BUFFER_DB_CALL:I = 0x34

.field public static final EVENT_SYNC_BUFFER_DB_CONTACT:I = 0x35

.field public static final EVENT_UPDATE_DEFAULT_SMS_APP:I = 0x385

.field private static final LOG_TAG:Ljava/lang/String; = "DatabaseMgrBase"

.field protected static final MAX_SYNC_MSG_NUM:I = 0x12c


# instance fields
.field protected mCallLock:Ljava/lang/Object;

.field private mCallLogDbObserver:Landroid/database/ContentObserver;

.field public mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

.field private mCallSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

.field protected mContactLock:Ljava/lang/Object;

.field public mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

.field protected mContext:Landroid/content/Context;

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

.field protected mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

.field protected mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

.field protected mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

.field protected mNmsSmsMessageSender:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

.field protected mNotiMgr:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

.field private mRcsAgentEventListenerImpl:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;

.field public mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/NmsClientManager;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContactLock:Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$1;

    new-instance v1, Landroid/os/Handler;

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$1;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogDbObserver:Landroid/database/ContentObserver;

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsAgentEventListenerImpl:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;

    const-string v0, "DatabaseMgrBase"

    const-string v1, "Create NmsDataBaseManager"

    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 14
    new-instance p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    invoke-direct {p1, p2, p3, p0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    .line 15
    new-instance p1, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    .line 16
    new-instance p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    .line 17
    new-instance p1, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsSmsMessageSender:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    .line 18
    new-instance p1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p0}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    .line 19
    new-instance p1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-direct {p1, p2, p3, p0, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    .line 20
    new-instance p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNotiMgr:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

    .line 21
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mResolver:Landroid/content/ContentResolver;

    .line 22
    new-instance p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$CalllogSubscriptionListener;

    invoke-direct {p1, p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$CalllogSubscriptionListener;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->completePayloadUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V

    return-void
.end method

.method private completePayloadUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "upload_status"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "file_path"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "payload_url"

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v4, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    const-string v5, "rcs"

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const-string v8, "correlation_tag=?"

    invoke-virtual {v4, v5, v0, v8, v7}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributesFromBufferDB(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v4

    const-string v5, "DatabaseMgrBase"

    if-eqz v4, :cond_0

    const-string p1, "resource not found"

    .line 7
    invoke-static {v5, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "upload_finished"

    .line 10
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Upload already done "

    .line 11
    invoke-static {v5, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "payload url error"

    .line 13
    invoke-static {v5, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    new-instance v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;-><init>()V

    sget-object v4, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_UPLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    .line 15
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFileName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object p4

    .line 20
    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p4

    .line 21
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v0, "eventTypeServer"

    .line 23
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v0, "PostRcsRequest"

    .line 24
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRelay(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/16 p3, 0x12d

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateDefaultSmsApp()V
    .locals 3

    const-string v0, "DatabaseMgrBase"

    const-string v1, "updateDefaultSmsApp:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isSemSmsPackageDefault(Landroid/content/Context;)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v1

    const-string v2, "eventTypeServer"

    .line 4
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v1

    const-string v2, "PostMsgDefaultSettingRequest"

    .line 5
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v1

    const-string v2, "default_sms_application_response"

    .line 6
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setAction(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setMsgDefaultSetting(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/16 v2, 0x12d

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected deinitCalllogSync()V
    .locals 3

    const-string v0, "DatabaseMgrBase"

    const-string v1, "deinitCalllogSync:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->setCalllogSyncEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    return-void
.end method

.method protected deinitMessageSync()V
    .locals 2

    const-string v0, "DatabaseMgrBase"

    const-string v1, "deinitMessageSync:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNotiMgr:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->unbindService()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->setMessageSyncEnabled(Z)V

    return-void
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public abstract getCallLogAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;
.end method

.method public getLastModSeqFromBufferDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "lastmodseq"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_url=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 p2, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 6
    throw p2
.end method

.method public abstract getMessageAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;
.end method

.method protected getMsgName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_3

    const/16 v0, 0x385

    if-eq p1, v0, :cond_2

    const/16 v0, 0x34

    if-eq p1, v0, :cond_1

    const/16 v0, 0x35

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "EVENT_SYNC_BUFFER_DB_CONTACT"

    return-object p1

    :cond_1
    const-string p1, "EVENT_SYNC_BUFFER_DB_CALL"

    return-object p1

    :cond_2
    const-string p1, "EVENT_UPDATE_DEFAULT_SMS_APP"

    return-object p1

    :cond_3
    const-string p1, "REQUEST_TO_APP_TIMER_EXPIRED"

    return-object p1

    :cond_4
    const-string p1, "EVENT_SYNC_BUFFER_DB"

    return-object p1
.end method

.method public getNotificationStatus(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getNotificationStatus(I)I

    move-result p1

    return p1
.end method

.method public getRcsAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsAgentEventListenerImpl:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;

    return-object v0
.end method

.method public getRequestManager()Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    return-object v0
.end method

.method protected handleDBSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSyncEvent[<--]: syncEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgrBase"

    .line 4
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "eventTypeCall"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "DeleteRequest"

    const-string v4, "UpdateRequest"

    const-string v5, "InsertRequest"

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->doTelephonyDBEvent(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)I

    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->doTelephonyDBEvent(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)I

    goto/16 :goto_3

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->DELETE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->doTelephonyDBEvent(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)I

    goto/16 :goto_3

    .line 12
    :cond_2
    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    if-eqz v0, :cond_b

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x17c3bd66

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v8, :cond_5

    const v4, 0x52712576

    if-eq v7, v4, :cond_4

    const v2, 0x64b98e44

    if-eq v7, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v9

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v10

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v6

    :goto_1
    if-eqz v2, :cond_9

    if-eq v2, v10, :cond_8

    if-eq v2, v9, :cond_7

    const-string p1, "unhandled rcs request reason!"

    .line 15
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->DELETE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    goto :goto_2

    .line 17
    :cond_8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    goto :goto_2

    .line 18
    :cond_9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    .line 19
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->processPushReceivedEvents(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    :cond_a
    const-string p1, "SyncEventRcs: request reason is null"

    .line 20
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_b
    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    if-eqz v0, :cond_e

    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    const-string v1, "insert"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->processPushReceivedEventsForCif(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 25
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    const-string v1, "update"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->processPushReceivedEventsForCif(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 27
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    const-string v1, "delete"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->processPushReceivedEventsForCif(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_e
    :goto_3
    return-void
.end method

.method protected handleDBSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 1

    const-string p1, "DatabaseMgrBase"

    const-string v0, "handleSyncEventList[<--]:"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleGroupStateMsg(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V
    .locals 1

    const-string p1, "DatabaseMgrBase"

    const-string v0, "supported for phase 2:"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->getMsgName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgrBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    const/16 v1, 0x385

    if-eq v0, v1, :cond_0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->updateDefaultSmsApp()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->startSyncDeltaBufferDB(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected initCalllogSync()V
    .locals 4

    const-string v0, "DatabaseMgrBase"

    const-string v1, "initCalllogSync:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogDbObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->setSmallestID()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->setCalllogSyncEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    return-void
.end method

.method protected initMessageSync()V
    .locals 2

    const-string v0, "DatabaseMgrBase"

    const-string v1, "initMessageSync:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNotiMgr:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->bindService(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getPermissionWithoutRef(Landroid/content/Context;)Z

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x385

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->setMessageSyncEnabled(Z)V

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->getMdecEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->setMdecEnabled(Z)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->setTimeStampForMsg(J)V

    :cond_2
    return-void
.end method

.method public isDuplicatedLastModSeq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->getLastModSeqFromBufferDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseMgrBase"

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stored db LastModSeq = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Ignore PushEvent"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "No Duplicated LastModSeq"

    .line 4
    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isMuteThread(J)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->isMuteThread(J)Z

    move-result p1

    return p1
.end method

.method public notfyFailureToDbMan(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 10

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DeleteRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "UpdateRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "UpdateMmsRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "DeleteMmsRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "PostMmsRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v6

    goto :goto_1

    :sswitch_5
    const-string v1, "PostRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v9, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    move-object p1, v9

    goto :goto_2

    :cond_1
    const-string p1, "update"

    goto :goto_2

    :cond_2
    const-string p1, "delete"

    goto :goto_2

    :cond_3
    const-string p1, "post"

    .line 5
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x2bd

    const/16 v7, 0x12e

    move-object v5, v8

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleFailedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->composeNotifyResultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 14
    invoke-virtual {v0, v8, v9, p1, v1}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3b625a51 -> :sswitch_5
        -0x2989e6e4 -> :sswitch_4
        -0x19cb1399 -> :sswitch_3
        -0xba82dfb -> :sswitch_2
        0x17c3bd66 -> :sswitch_1
        0x64b98e44 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyListFailureToDbMan(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DeleteRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_1
    const-string v1, "UpdateRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "UpdateMmsRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "DeleteMmsRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string v1, "PostMmsRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_5
    const-string v3, "PostRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    move-object v1, v0

    goto :goto_2

    :cond_1
    const-string v1, "update"

    goto :goto_2

    :cond_2
    const-string v1, "delete"

    goto :goto_2

    :cond_3
    const-string v1, "post"

    .line 5
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 6
    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 7
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 9
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x2bd

    const/16 v10, 0x12e

    .line 11
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->composeNotifyResultBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v3

    .line 12
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    goto :goto_3

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 14
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b625a51 -> :sswitch_5
        -0x2989e6e4 -> :sswitch_4
        -0x19cb1399 -> :sswitch_3
        -0xba82dfb -> :sswitch_2
        0x17c3bd66 -> :sswitch_1
        0x64b98e44 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyRelayRcsResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->notifyRelayRcsResult(Ljava/util/List;)V

    return-void
.end method

.method public notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDefaultSmsAppChanged()V
    .locals 1

    const/16 v0, 0x385

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onImsDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    const-string p1, "DatabaseMgrBase"

    const-string v0, "onImsDeregistered:"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onImsRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    const-string p1, "DatabaseMgrBase"

    const-string v0, "onImsRegistered:"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkChanged()V
    .locals 0

    return-void
.end method

.method public onReceivingPayloadNotify(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivingPayloadNotify phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uploadStatus = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseMgrBase"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->registerNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V

    :cond_0
    return-void
.end method

.method public requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcastToApp: transactionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bulkData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgrBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.mdecservice.CMC_SEND_RCS"

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.mdecservice.CMC_PUSH_RECEIVED"

    .line 3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "transaction_id"

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data_type"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "request_type"

    .line 7
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bulk_data"

    .line 8
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const p1, 0x1000020

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    sget-object p3, Lcom/samsung/android/mdecservice/nms/constants/NmsIntents;->PERMISSION_SEM_CMC_PUSH:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public sendrelayMMS(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->sendrelayMMS(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public sendrelaySMS(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->sendrelaySMS(Ljava/util/List;)V

    return-void
.end method

.method public startContactSync()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isContactSyncRunning()Z

    move-result v0

    const-string v1, "DatabaseMgrBase"

    if-eqz v0, :cond_0

    const-string v0, "contact sync is running. wait."

    .line 2
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->trySyncBufferDB(Landroid/net/Uri;)V

    return-void

    :cond_0
    const-string v0, "contact is changed - new thread"

    .line 4
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$2;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected startSyncDeltaBufferDB(Ljava/lang/Object;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSyncDeltaBufferDB with android DB , Uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgrBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    check-cast p1, Landroid/net/Uri;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "it might be CMC\'s DB operation. ignore it."

    if-eqz v0, :cond_2

    const-string v0, "Calllog is changed"

    .line 4
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->getIgnoreNextChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->setIgnoreNextChange(Z)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "calllog, sync is running. wait."

    .line 9
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->trySyncBufferDB(Landroid/net/Uri;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->checkLogDBChange()Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getIgnoreNextChange()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-static {v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->setIgnoreNextChange(Z)V

    return-void

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->startContactSync()V

    goto :goto_0

    :cond_4
    const-string p1, "URI not handled"

    .line 17
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public trySyncBufferDB(Landroid/net/Uri;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v3, 0x34

    .line 3
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :cond_0
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContactLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v3, 0x35

    .line 9
    :try_start_1
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    :cond_2
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public unregisterNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->unregisterNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V

    :cond_0
    return-void
.end method
