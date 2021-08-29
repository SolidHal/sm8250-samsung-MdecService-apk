.class public Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;
.super Lcom/samsung/android/mdecservice/nms/util/StateMachine;
.source "SubscriptionAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubscriptionAgent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DeregisteringState;,
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$UpdatingState;,
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$RegisteredState;,
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$RegisteringState;,
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$ReadyState;,
        Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;
    }
.end annotation


# static fields
.field private static final SA_EVENT_DELAYED_LOCAL_DEREGISTER:I = 0x8

.field private static final SA_EVENT_DEREGISTERED:I = 0x5

.field private static final SA_EVENT_DEREGISTER_FAILED:I = 0x7

.field private static final SA_EVENT_REGISTERED:I = 0x2

.field private static final SA_EVENT_REGISTER_FAILED:I = 0x3

.field private static final SA_EVENT_REQUEST_DEREGISTRATION:I = 0x4

.field private static final SA_EVENT_REQUEST_REGISTRATION:I = 0x1

.field private static final SA_EVENT_REQUEST_SERVICE_UPDATE:I = 0xb

.field private static final SA_EVENT_REQUEST_UPDATE:I = 0x9

.field private static final SA_EVENT_UPDATED:I = 0xa


# instance fields
.field private isTerminating:Z

.field private mClientCorrelator:Ljava/lang/String;

.field private final mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mDeregisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private mLineId:Ljava/lang/String;

.field private mNmsServerAddr:Ljava/lang/String;

.field private mPdDeviceId:Ljava/lang/String;

.field private final mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mRegisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private mResourceId:Ljava/lang/String;

.field private mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

.field private mSubFailureCounter:I

.field private mSubId:Ljava/lang/String;

.field private mSubscription:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

.field private mUnsubFailureCounter:I

.field private final mUpdatingState:Lcom/samsung/android/mdecservice/nms/util/State;

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;Landroid/os/Handler;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    const-string v0, "SubscriptionAgent - "

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubFailureCounter:I

    .line 4
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUnsubFailureCounter:I

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$ReadyState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$ReadyState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$RegisteringState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$RegisteringState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$RegisteredState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$RegisteredState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$UpdatingState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$UpdatingState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUpdatingState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 10
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DeregisteringState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DeregisteringState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDeregisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 11
    iput-boolean p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isTerminating:Z

    .line 12
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 14
    invoke-virtual {p3}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-sim"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$200(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getBlankHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mClientCorrelator:Ljava/lang/String;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "creating agent: clientCorrelator="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mClientCorrelator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SubMgr"

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->initState()V

    return-void
.end method

.method private AgentLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v2}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1102(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mLineId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mPdDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mPdDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubFailureCounter:I

    return p0
.end method

.method static synthetic access$1902(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubFailureCounter:I

    return p1
.end method

.method static synthetic access$1908(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubFailureCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubFailureCounter:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mClientCorrelator:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isTerminating:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUnsubFailureCounter:I

    return p0
.end method

.method static synthetic access$4108(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUnsubFailureCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUnsubFailureCounter:I

    return v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mResourceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mResourceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubscription:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    return-object p0
.end method

.method static synthetic access$702(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubscription:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    return-object p0
.end method

.method private initState()V
    .locals 2

    const-string v0, "SubMgr"

    const-string v1, "initState:"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUpdatingState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDeregisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->setInitialState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->start()V

    return-void
.end method

.method private setDestState(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDestState to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->DEFAULT:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->READY:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mReadyState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->REGISTERING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->REGISTERED:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->UPDATING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    if-ne p1, v0, :cond_4

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUpdatingState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 12
    :cond_4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;->DEREGISTERING:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubAgentState;

    if-ne p1, v0, :cond_5

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDeregisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected State : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deregister(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregister: terminate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isTerminating:Z

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public endSubscription()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":endSubscription"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wrong server addr"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$2800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/16 v0, 0x8

    const-wide/16 v1, 0xbb8

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "box:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mLineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/subscriptions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)V

    const-string v3, "DeleteSubRequest"

    invoke-interface {v1, v0, v3, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$2700(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubscription:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->notifyNmsSubscription(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;ZLcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    return-void
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription()Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubscription:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    return-object v0
.end method

.method public isDeregisterRequired()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeregisterRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isDeregistering()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDeregisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRegisterRequired()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mUpdatingState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mDeregisteringState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isRegistered()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->getStateName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mRegisteredState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegistered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public performSearchIfPushHistoryExist(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    const-string v2, "eventTypeMessage"

    const-string v3, "eventTypeCall"

    if-ne p1, v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->isPushHistoryExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-interface {v0, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->makeSearchOperation(Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_2
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne p1, v0, :cond_4

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->isGioPushHistoryExist()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->makeGioSearchOperation()V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->isRelayDataPushHistoryExist()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SubMgr"

    const-string v0, "search relay data"

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->makeRelayDataSearchOperation()V

    :cond_4
    :goto_2
    return-void
.end method

.method public register()V
    .locals 2

    const-string v0, "SubMgr"

    const-string v1, "register:"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public startSubscription()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":startSubscription"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mLineId:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getPdDeviceId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mPdDeviceId:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsLogServerAddr(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wrong server addr"

    .line 9
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;-><init>()V

    const v1, 0x15180

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setDuration(Ljava/lang/Integer;)V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mClientCorrelator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setClientCorrelator(Ljava/lang/String;)V

    const-string v1, "GCM"

    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setPushType(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$4500(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setPushToken(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setCriterionValue(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$4600(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setEnabledServiceSet(Ljava/util/Set;)V

    .line 17
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v1, v2, :cond_3

    const-string v1, "eventTypeMessage"

    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setCallbackData(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_3
    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v1, v2, :cond_4

    const-string v1, "eventTypeCall"

    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->setCallbackData(Ljava/lang/String;)V

    .line 21
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->encodeJSON()V

    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mLineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/subscriptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$1;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)V

    const-string v4, "SubscribeRequest"

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method

.method public startSubscritpionUpdate()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":startSubscritpionUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wrong server addr"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mNmsServerAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mLineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/subscriptions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->mSubId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x15180

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->setDuration(Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->encodeJSON()V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->this$0:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->access$800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)V

    const-string v4, "SubscribeUpdateRequest"

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "SubMgr"

    const-string v1, "update:"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public updateService()V
    .locals 2

    const-string v0, "SubMgr"

    const-string v1, "updateService:"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->AgentLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method
