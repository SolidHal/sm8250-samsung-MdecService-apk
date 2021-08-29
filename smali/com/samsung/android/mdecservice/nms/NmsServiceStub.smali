.class public Lcom/samsung/android/mdecservice/nms/NmsServiceStub;
.super Lcom/samsung/android/cmcopenapi/INmsService$Stub;
.source "NmsServiceStub.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/mdecservice/nms/NmsServiceStub;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private isInitialized:Z

.field private mContext:Landroid/content/Context;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private final mDbThread:Landroid/os/HandlerThread;

.field private mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->sInstance:Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/INmsService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->isInitialized:Z

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/os/HandlerThread;

    const-class v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-class v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mDbThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->sInstance:Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    return-object v0
.end method

.method public static declared-synchronized makeNmsService(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/NmsServiceStub;
    .locals 3

    const-class v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->sInstance:Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    if-eqz v1, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already created."

    invoke-static {p0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->sInstance:Lcom/samsung/android/mdecservice/nms/NmsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating NmsService"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->sInstance:Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    .line 6
    sget-object p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Done."

    invoke-static {p0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->sInstance:Lcom/samsung/android/mdecservice/nms/NmsServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public deliverPushNotification(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deliverPushNotification:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getPushReceiver()Lcom/samsung/android/mdecservice/nms/push/PushReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump Cmc from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->prepareDump(Ljava/io/PrintWriter;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->dump()V

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->cleanDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAllCif()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " getAllCif : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->getAllCif()V

    :cond_0
    return-void
.end method

.method public getMessageSetting()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " getMessageSetting : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->getMessageSetting()V

    :cond_0
    return-void
.end method

.method public getRcsCapability(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " getRcsCapability : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->getRcsCapability(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro.cmc.device_type"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init failed as the Cmc property for Cmc Device Type is not set"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ro.cmc.version"

    .line 4
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init failed as the Cmc property for Cmc Version is not set"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->init(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->initConfig(Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/config/NmsFeature;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mDbThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mDbThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->isInitialized:Z

    .line 15
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->setNmsInitialized(Z)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->isInitialized:Z

    return v0
.end method

.method public isNmsSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getAgentManagerFactory()Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->isSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z

    move-result p1

    return p1
.end method

.method public notifyPushTokenChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyPushTokenChanged:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/16 v1, 0x323

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRequestToAppCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " onRequestToAppCompleted : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleCompletedPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->registerNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerNmsConfigListener:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mandatory fields are missing"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerNmsSubscriptionListener:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    goto :goto_2

    .line 3
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mandatory fields are missing"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
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
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " requestToServer : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "post"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 4
    const-class v2, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "correlation_id"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "correlation_tag"

    .line 6
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg_context"

    .line 7
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "group_info"

    .line 8
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "chat_id"

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v3

    :cond_1
    move-object v1, v2

    .line 11
    :goto_1
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;->DEFAULT:Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->startLogger(Ljava/lang/String;Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdeccommon/log/TimeLog;->setMsgContext(Ljava/lang/String;)V

    .line 13
    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->APP_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public sendMessageSetting(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " sendMessageSetting : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendMessageSetting(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendMessageSettingExt(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " sendMessageSettingExt : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendMessageSettingExt(Ljava/lang/String;)V

    :cond_0
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public sendrelayMMS(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " sendrelayMMS : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->sendrelayMMS(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public sendrelaySMS(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, " sendrelaySMS : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->sendrelaySMS(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->getNmsDbManager()Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->unregisterNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unregisterNmsConfigListener:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mandatory fields are missing"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unregisterNmsSubscriptionListener:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->mNmsClientManager:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    goto :goto_2

    .line 3
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mandatory fields are missing"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
