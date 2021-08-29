.class public Lcom/samsung/android/mdecservice/nms/NmsClientManager;
.super Landroid/os/Handler;
.source "NmsClientManager.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;


# static fields
.field public static final EVENT_HANDLE_SYNCEVENT:I = 0x12d

.field public static final EVENT_HANDLE_SYNCEVENTLIST:I = 0x12e

.field public static final EVENT_PUSH_TOKEN_REFRESHED:I = 0x323

.field public static final EVENT_SYNC_COMPLETED:I = 0x12f

.field public static final EVENT_TRY_DEREGISTER:I = 0x322

.field public static final EVENT_TRY_REGISTER:I = 0x321

.field public static final EVENT_WATCH_ACTIVATION_CHANGED:I = 0x385

.field private static final LOG_TAG:Ljava/lang/String; = "ClientMgr"


# instance fields
.field protected isCalllogSyncEnabled:Z

.field private isCalllogSyncRunning:Z

.field private isContactSyncRunning:Z

.field protected isMessageSyncEnabled:Z

.field private isNmsClientManagerReady:Z

.field private mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

.field private mClientManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

.field private final mContext:Landroid/content/Context;

.field private mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

.field private mImsInfoListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

.field private mImsRegistrationListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

.field private mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

.field private mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

.field private mOkHttpController:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

.field private mOkSseController:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

.field private mPushReceiver:Lcom/samsung/android/mdecservice/nms/push/PushReceiver;

.field private mRunningServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field

.field private mVolleyController:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 10

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mClientManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isNmsClientManagerReady:Z

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mImsInfoListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mVolleyController:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkHttpController:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkSseController:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mPushReceiver:Lcom/samsung/android/mdecservice/nms/push/PushReceiver;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    .line 14
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isMessageSyncEnabled:Z

    .line 15
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncEnabled:Z

    .line 16
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncRunning:Z

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isContactSyncRunning:Z

    .line 18
    new-instance v0, Lcom/samsung/android/mdecservice/nms/NmsClientManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager$1;-><init>(Lcom/samsung/android/mdecservice/nms/NmsClientManager;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mImsRegistrationListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

    const-string v0, "ClientMgr"

    const-string v2, "Create NmsClientManager"

    .line 19
    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    const-class v1, Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mClientManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    .line 24
    new-instance p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2, p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 25
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    .line 26
    new-instance p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/NmsClientManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 27
    new-instance p1, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkSseController:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

    .line 28
    new-instance p1, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mVolleyController:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    .line 29
    new-instance p1, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkHttpController:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    .line 30
    new-instance p1, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mImsInfoListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    .line 31
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mImsRegistrationListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->registerListener(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;)V

    .line 32
    new-instance v9, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, p1, p0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    iput-object v9, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    .line 33
    new-instance p1, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mPushReceiver:Lcom/samsung/android/mdecservice/nms/push/PushReceiver;

    .line 34
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->registerNetworkStateListener()V

    .line 35
    iput-boolean v3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isNmsClientManagerReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/NmsClientManager;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    return-object p0
.end method

.method private filterService(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isSemSmsPackageDefault(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ClientMgr"

    const-string v2, "filterService: remove MESSAGE service as Samsung Message app is not default"

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private static getMsgName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x385

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EVENT_PUSH_TOKEN_REFRESHED"

    return-object p0

    :pswitch_1
    const-string p0, "EVENT_TRY_DEREGISTER"

    return-object p0

    :pswitch_2
    const-string p0, "EVENT_TRY_REGISTER"

    return-object p0

    :pswitch_3
    const-string p0, "EVENT_SYNC_COMPLETED"

    return-object p0

    :pswitch_4
    const-string p0, "EVENT_HANDLE_SYNCEVENTLIST"

    return-object p0

    :pswitch_5
    const-string p0, "EVENT_HANDLE_SYNCEVENT"

    return-object p0

    :cond_0
    const-string p0, "EVENT_WATCH_ACTIVATION_CHANGED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x321
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSyncEvent[-->]: syncEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventTo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eventTypeServer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToSync()Z

    move-result v3

    const-string v4, "eventTypeMessage"

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isDataRestrictionSatisfied(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Data restriction check failed."

    .line 6
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->publishDelayedSyncEventComplete(I)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->handleMsgServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eventTypeCall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncRunning:Z

    const/4 v0, 0x3

    .line 13
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->publishDelayedSyncEventComplete(I)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->handleCalllogServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventTypeRcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->handleRcsServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "handleSyncEvent: Entitlement profiles are not ready."

    .line 17
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    instance-of v0, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isEventNeedSendErrorToApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->notfyFailureToDbMan(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleServerSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getEventTo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventTypeServer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToSync()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "eventTypeMessage"

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x34992ce

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_3

    const v6, 0x46a7c473

    if-eq v5, v6, :cond_2

    const v2, 0x65e1ed72

    if-eq v5, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "eventTypeCall"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    const-string v2, "eventTypeRcs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v7

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v8, :cond_6

    if-eq v2, v7, :cond_5

    goto :goto_3

    .line 5
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->handleRcsServerSyncEventList(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    goto :goto_3

    .line 6
    :cond_6
    iput-boolean v8, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncRunning:Z

    const/4 v1, 0x3

    .line 7
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->publishDelayedSyncEventComplete(I)V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->handleCallLogListEvents(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    goto :goto_3

    .line 9
    :cond_7
    invoke-direct {p0, v8}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->publishDelayedSyncEventComplete(I)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->handleMsgListEvents(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v0, "ClientMgr"

    const-string v1, "handleSyncEvent: Entitlement profiles are not ready."

    .line 11
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    instance-of v0, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    if-eqz v0, :cond_9

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isEventNeedSendErrorToApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->notifyListFailureToDbMan(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private isDeinitDbManagerRequired(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "message"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    .line 2
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "calllog"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 5
    :goto_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeinitDbManagerRequired: service="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " required="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientMgr"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static isEventNeedSendErrorToApp(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DeleteRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "UpdateRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "UpdateMmsRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "DeleteMmsRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "PostMmsRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v6

    goto :goto_1

    :sswitch_5
    const-string v0, "PostRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    return v6

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

.method private onPushTokenRefreshed(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ClientMgr"

    const-string v1, "onPushTokenRefreshed:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getPushToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getPushToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->unsubscribeAll()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->setPushTokenAll(Ljava/lang/String;)V

    const/16 p1, 0x321

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private processRequestReason(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PostContactRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "SearchContactRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "RelayRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "DeleteContactRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v1, "RelayResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v1, "UpdateContactRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->postRelayResponse(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->postRelayRequest(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->searchContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->deleteContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->updateContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->postContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f09d868 -> :sswitch_5
        -0x2cb8762e -> :sswitch_4
        0x1b40fa -> :sswitch_3
        0x300106de -> :sswitch_2
        0x4bd4e237 -> :sswitch_1
        0x5ddd0b2f -> :sswitch_0
    .end sparse-switch
.end method

.method private publishDelayedSyncEventComplete(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x12f

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private releaseSyncEvent(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isContactSyncRunning:Z

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncRunning:Z

    :goto_0
    return-void
.end method

.method private tryDeregister()V
    .locals 3

    const-string v0, "ClientMgr"

    const-string v1, "tryDeregister:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->unsubscribeAll()V

    const/16 v0, 0x321

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private tryRegister()V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "tryRegister:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isNmsClientManagerReady:Z

    if-nez v1, :cond_0

    const-string v1, "tryRegister: NmsClientManager not initiated yet."

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataRegState()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tryRegister: Ps out of service."

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getPushToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "tryRegister: Push token is not published"

    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->getPushTokenForNms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->onPushTokenRefreshed(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToSync()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "tryRegister: Entitlement profiles are not ready"

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->subscribeAll()V

    return-void
.end method


# virtual methods
.method public abortDelayedSyncEventComplete(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x12f

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NMS2]"

    const-string v2, "ClientMgr"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->increaseIndent(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RunningServiceMap: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->decreaseIndent(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mClientManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->dump()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mPushReceiver:Lcom/samsung/android/mdecservice/nms/push/PushReceiver;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->dump()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->dump()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->dump()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mVolleyController:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->dump()V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkHttpController:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->dump()V

    :cond_5
    return-void
.end method

.method public getAgentManagerFactory()Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    return-object v0
.end method

.method public getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    return-object v0
.end method

.method public getOkSseController()Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkSseController:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

    return-object v0
.end method

.method public getPushReceiver()Lcom/samsung/android/mdecservice/nms/push/PushReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mPushReceiver:Lcom/samsung/android/mdecservice/nms/push/PushReceiver;

    return-object v0
.end method

.method protected handleCalllogServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "DeleteRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v2, "UpdateRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_2
    const-string v2, "GetRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v2, "PostRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "SearchRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->searchCallLog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->deleteCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 6
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->updateCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 7
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->postCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4099d859 -> :sswitch_4
        -0x3b625a51 -> :sswitch_3
        -0xa11f587 -> :sswitch_2
        0x17c3bd66 -> :sswitch_1
        0x64b98e44 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getMsgName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "eventTypeDb"

    const-string v2, "eventTypeServer"

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->onPushTokenRefreshed(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->tryDeregister()V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->tryRegister()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->releaseSyncEvent(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getEventTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->handleServerSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getEventTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleDBSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    goto :goto_0

    .line 13
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->handleServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleDBSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x321
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMsgServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "DeleteRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "PostNotiRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "PostMsgAppSettingRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "PostMsgAppSettingExtRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "PostAlertNotiRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "UpdateRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "PostDdmMsgRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_7
    const-string v2, "GetRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "UpdateMmsRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v2, "DeleteMmsRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_a
    const-string v2, "PostMmsRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_b
    const-string v2, "PostRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_c
    const-string v2, "SearchRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_d
    const-string v2, "PostMsgDefaultSettingRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_e
    const-string v2, "GetMsgAppSettingRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->searchMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 4
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getMsgNoti(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 5
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->postMsgNoti(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 6
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->deleteMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 7
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 8
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->updateMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 9
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->postMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62f0c68b -> :sswitch_e
        -0x61d81d61 -> :sswitch_d
        -0x4099d859 -> :sswitch_c
        -0x3b625a51 -> :sswitch_b
        -0x2989e6e4 -> :sswitch_a
        -0x19cb1399 -> :sswitch_9
        -0xba82dfb -> :sswitch_8
        -0xa11f587 -> :sswitch_7
        -0x136945 -> :sswitch_6
        0x17c3bd66 -> :sswitch_5
        0x2052d79d -> :sswitch_4
        0x32067fbe -> :sswitch_3
        0x509c05ff -> :sswitch_2
        0x5d823cd9 -> :sswitch_1
        0x64b98e44 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleRcsServerSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "PostGroupInfoRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "DeleteRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "SearchStateMsgRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "PostStateRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "BulkUpdateRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "UpdateRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "SearchRelayDataRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "GetRcsThumbRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_8
    const-string v2, "BulkPostRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v2, "GetRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_a
    const-string v2, "PostRcsRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_b
    const-string v2, "SearchGroupInfoRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v2, "DeleteCifRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_d
    const-string v2, "PostCifRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_e
    const-string v2, "SearchCifRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_f
    const-string v2, "GetRcsPayloadRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_10
    const-string v2, "BulkDeleteRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->doCifOperation(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 4
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->searchRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 5
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 6
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->deleteRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 7
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->updateRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 8
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->bulkPostRcsMessages(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 9
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->postRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 10
    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isContactSyncRunning:Z

    const/16 v1, 0x2f

    .line 11
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->publishDelayedSyncEventComplete(I)V

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->processRequestReason(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;I)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x678cb5ae -> :sswitch_10
        -0x61bda673 -> :sswitch_f
        -0x609cba69 -> :sswitch_e
        -0x4be95571 -> :sswitch_d
        -0x3c2a8226 -> :sswitch_c
        -0x358ad816 -> :sswitch_b
        -0x2ec70753 -> :sswitch_a
        -0xa11f587 -> :sswitch_9
        0x130d3d -> :sswitch_8
        0x61d5345 -> :sswitch_7
        0x6399e1c -> :sswitch_6
        0x17c3bd66 -> :sswitch_5
        0x4b7d7974 -> :sswitch_4
        0x5326f19e -> :sswitch_3
        0x5de11c57 -> :sswitch_2
        0x64b98e44 -> :sswitch_1
        0x7b16f2e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected handleRcsServerSyncEventList(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->handleRcsMsgListEvents(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    return-void
.end method

.method public isCalllogSyncRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncRunning:Z

    return v0
.end method

.method public isContactSyncRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isContactSyncRunning:Z

    return v0
.end method

.method public isGioPushHistoryExist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isGioPushHistoryExist()Z

    move-result v0

    return v0
.end method

.method public isPushHistoryExist(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isPushHistoryExist(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRcsEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mImsInfoListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->isRcsEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isRelayDataPushHistoryExist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isRelayDataPushHistoryExist()Z

    move-result v0

    return v0
.end method

.method public isSaRegistered(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->isSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isSearchRequiredAfterAirplaneOff()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isSearchRequiredAfterAirplaneOff()Z

    move-result v0

    return v0
.end method

.method public makeGioSearchOperation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->makeGioSearchOperation()V

    return-void
.end method

.method public makeRelayDataSearchOperation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->makeRelayDataSearchOperation()V

    return-void
.end method

.method public makeSearchOperation(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->makeSearchOperation(Ljava/lang/String;)V

    return-void
.end method

.method public markSearchCompleted(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->markSearchCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public notifyDefaultSmsAppChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->onDefaultSmsAppChanged()V

    return-void
.end method

.method public notifyMdecAnalytics()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isMessageSyncEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateNmsWorking(Z)V

    return-void
.end method

.method public onEntitlementProfileUpdated(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEntitlementProfileUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result v2

    const-string v3, "calllog"

    const-string v4, "message"

    if-ge v0, v2, :cond_e

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {p1, v2, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    const-string v5, "runningServices="

    if-eqz v2, :cond_9

    .line 4
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getPhoneId()I

    move-result v3

    .line 5
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getActiveServiceSet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enabledServices="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    invoke-direct {p0, v6}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->filterService(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filteredServices="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    invoke-interface {v2, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p1, "service list not changed"

    .line 12
    invoke-static {v1, v3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 13
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    const-string v8, "update calllog service"

    if-le v5, v7, :cond_6

    .line 14
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToSync()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 17
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "enable message service"

    .line 18
    invoke-static {v1, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    iget-boolean v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isMessageSyncEnabled:Z

    if-nez v4, :cond_1

    .line 20
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->initMessageSync()V

    .line 21
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->enableMsgSync(ILjava/util/Set;)V

    .line 22
    :cond_2
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "enable calllog service"

    .line 23
    invoke-static {v1, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    iget-boolean v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncEnabled:Z

    if-nez v4, :cond_3

    .line 25
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->initCalllogSync()V

    .line 26
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->enableCalllogSync(ILjava/util/Set;)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-static {v1, v3, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->updateCalllogSync(ILjava/util/Set;)V

    .line 29
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_5
    const-string v2, "Entitlement profiles are not ready"

    .line 30
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 31
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v5, v7, :cond_d

    .line 32
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-interface {v5, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 34
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "disable message service"

    .line 35
    invoke-static {v1, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v4, v3}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->disableMsgSync(I)V

    .line 37
    :cond_7
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "disable calllog service"

    .line 38
    invoke-static {v1, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v4, v3}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->disableCalllogSync(I)V

    goto :goto_2

    .line 40
    :cond_8
    invoke-static {v1, v3, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->updateCalllogSync(ILjava/util/Set;)V

    .line 42
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 43
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_c

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 48
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v5, v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->disableMsgSync(I)V

    goto :goto_3

    .line 49
    :cond_b
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 50
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v5, v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->disableCalllogSync(I)V

    goto :goto_3

    .line 51
    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 52
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 53
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runningServiceMap="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mRunningServiceMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isMessageSyncEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isMessageSyncEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isCalllogSyncEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isMessageSyncEnabled:Z

    if-eqz p1, :cond_f

    .line 55
    invoke-direct {p0, v4}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isDeinitDbManagerRequired(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "Start deinit the Message Sync"

    .line 56
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->deinitMessageSync()V

    .line 58
    :cond_f
    iget-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncEnabled:Z

    if-eqz p1, :cond_10

    .line 59
    invoke-direct {p0, v3}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isDeinitDbManagerRequired(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "Start deinit the Calllog Sync"

    .line 60
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->deinitCalllogSync()V

    .line 62
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->tryRegister()V

    return-void
.end method

.method public onNetworkStateChanged(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClientMgr"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/16 p1, 0x321

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->onNetworkChanged()V

    return-void
.end method

.method public onSamsungAccountInfoChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "onSamsungAccountInfoChanged:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mVolleyController:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->notifySaInfoRefreshed(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkHttpController:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->notifySaInfoRefreshed(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkSseController:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->notifySaInfoRefreshed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWatchActivationChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWatchActivationChanged: activate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNotiMgr:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->bindService(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mNmsDbManager:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNotiMgr:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->unbindService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mVolleyController:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method

.method public postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mOkHttpController:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    return-void
.end method

.method public postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mVolleyController:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method

.method public publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 1

    const/16 v0, 0x12d

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public publishSyncEventComplete(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x12f

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 1

    const/16 v0, 0x12e

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public publishTryDeregisterEvent()V
    .locals 1

    const/16 v0, 0x322

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerCallLogAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "registerCallLogAgentEventListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->registerCallLogAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;)V

    return-void
.end method

.method public registerMessageAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "registerMessageAgentEventListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->registerMessageAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;)V

    return-void
.end method

.method public registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "registerNmsConfigListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->registerConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V

    return-void
.end method

.method public registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "registerNmsSubscriptionListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->registerSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    return-void
.end method

.method public registerRcsAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "registerNmsSubscriptionListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->registerRcsAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;)V

    return-void
.end method

.method public resetPushHistory(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mLostPushDetector:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->resetPushHistory(Ljava/lang/String;)V

    return-void
.end method

.method public setCalllogSyncEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isCalllogSyncEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->notifyMdecAnalytics()V

    return-void
.end method

.method public setContactSyncRunning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isContactSyncRunning:Z

    return-void
.end method

.method public setMessageSyncEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isMessageSyncEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->notifyMdecAnalytics()V

    return-void
.end method

.method public setSearchRequiredAfterAirplaneOff(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->setSearchRequiredAfterAirplaneOff(Z)V

    return-void
.end method

.method public unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "unregisterNmsConfigListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->unregisterConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V

    return-void
.end method

.method public unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "unregisterNmsSubscriptionListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->mAgentManagerFactory:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->unregisterSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    return-void
.end method
