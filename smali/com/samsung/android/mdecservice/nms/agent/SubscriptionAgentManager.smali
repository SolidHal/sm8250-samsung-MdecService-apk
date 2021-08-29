.class public Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;
.super Ljava/lang/Object;
.source "SubscriptionAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;,
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;
    }
.end annotation


# static fields
.field public static final DEFAULT_DELAY_BTW_UNSUB_SUB:I = 0x1388

.field private static final DEFAULT_RETRY_AFTER:I = 0x1

.field private static final DEFAULT_RETRY_MAX_COUNT:I = 0x5

.field private static final DEFAULT_SUBSCRIBE_DURATION:I = 0x15180

.field private static final DEFAULT_TIMEOUT_FOR_LOCAL_DEREGISTER:I = 0xbb8

.field private static final LOG_TAG:Ljava/lang/String; = "SubMgr"


# instance fields
.field private mAgentManFac:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

.field private final mContext:Landroid/content/Context;

.field private mEnabledServiceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private final mPhoneId:I

.field private mPreAlarmMgr:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

.field private mPushToken:Ljava/lang/String;

.field private mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

.field private sCallSubHandler:Landroid/os/Handler;

.field private sCallSubHandlerThread:Landroid/os/HandlerThread;

.field private sMsgSubHandler:Landroid/os/Handler;

.field private sMsgSubHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mAgentManFac:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPreAlarmMgr:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandler:Landroid/os/Handler;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandlerThread:Landroid/os/HandlerThread;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandler:Landroid/os/Handler;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandlerThread:Landroid/os/HandlerThread;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mEnabledServiceSet:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 13
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mAgentManFac:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    .line 14
    iput p4, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string p2, "nms"

    .line 15
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 16
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->initializeFirebaseApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->getPushTokenForNms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPushToken:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPreAlarmMgr:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mAgentManFac:Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPreAlarmMgr:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPushToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mEnabledServiceSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    return-object p0
.end method

.method private getCallSubHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallSubHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandler:Landroid/os/Handler;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getsMsgSubHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MsgSubHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandler:Landroid/os/Handler;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public calRefreshExpires(I)I
    .locals 0

    add-int/lit16 p1, p1, -0x258

    return p1
.end method

.method public checkDeregCompleted()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isDeregistering()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 3
    :goto_1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDeregCompleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SubMgr"

    invoke-static {v3, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method public declared-synchronized disableCallLogSync()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "SubMgr"

    .line 2
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string v2, "disableCallLogSync: already disabled"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SubMgr"

    .line 3
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCallLogSync: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 4
    invoke-virtual {v4}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isRegisterRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->deregister(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "SubMgr"

    .line 8
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string v2, "Already deregistered, Reset the agent"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableMsgSync()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "SubMgr"

    .line 2
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string v2, "disableMsgSync: already disabled"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SubMgr"

    .line 3
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableMsgSync: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 4
    invoke-virtual {v4}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isRegisterRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->deregister(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "SubMgr"

    .line 8
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string v2, "Already deregistered, Reset the agent"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableCallLogSync(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SubMgr"

    .line 1
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCallLogSync: enabledServiceSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mEnabledServiceSet:Ljava/util/Set;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "SubMgr"

    .line 4
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string v1, "Reset the existing agent first"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->DEFAULT:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 7
    :cond_0
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->getCallSubHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;Landroid/os/Handler;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableMsgSync(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "SubMgr"

    .line 1
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMsgSync: enabledServiceSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mEnabledServiceSet:Ljava/util/Set;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "SubMgr"

    .line 4
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string v1, "Reset the existing agent first"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->DEFAULT:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 7
    :cond_0
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->getsMsgSubHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;Landroid/os/Handler;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v1

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSubAgentArray()[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    return-object v0
.end method

.method public getSubscription(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getSubscription()Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getSubscription()Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isRegistered(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isRegistered()Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isRegistered()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sMsgSubHandlerThread:Landroid/os/HandlerThread;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->sCallSubHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPushToken:Ljava/lang/String;

    return-void
.end method

.method public updateCallLogSync(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallLogSync: enabledServiceSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mEnabledServiceSet:Ljava/util/Set;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    .line 4
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    const-string v0, "updateCallLogSync: no calllog agent left"

    invoke-static {v2, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallLogSync: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v3, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 6
    invoke-virtual {v3}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v2, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isRegistered()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->updateService()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isRegisterRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->mSubAgentArray:[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getIdx()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->register()V

    :cond_2
    :goto_0
    return-void
.end method
