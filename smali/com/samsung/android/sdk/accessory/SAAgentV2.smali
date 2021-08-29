.class public abstract Lcom/samsung/android/sdk/accessory/SAAgentV2;
.super Ljava/lang/Object;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTRATION_REQUIRED:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field public static final AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED:I = 0x60a

.field public static final AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED:I = 0x609

.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field private static final CLEANUP_WAIT_MAX_RETRY:I = 0x4

.field private static final CLEANUP_WAIT_TIME:J = 0x1f4L

.field public static final CONNECTION_ALREADY_EXIST:I = 0x405

.field public static final CONNECTION_DUPLICATE_REQUEST:I = 0x410

.field public static final CONNECTION_FAILURE_DEVICE_UNREACHABLE:I = 0x404

.field public static final CONNECTION_FAILURE_INVALID_PEERAGENT:I = 0x409

.field private static final CONNECTION_FAILURE_LOCAL_AGENT_NOT_FOUND:I = 0x40a

.field public static final CONNECTION_FAILURE_NETWORK:I = 0x500

.field public static final CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE:I = 0x406

.field public static final CONNECTION_FAILURE_PEERAGENT_REJECTED:I = 0x407

.field public static final CONNECTION_FAILURE_SERVICE_LIMIT_REACHED:I = 0x40d

.field public static final CONNECTION_SUCCESS:I = 0x0

.field public static final ERROR_AGENT_REQUEST_IN_PROGRESS:I = 0xa04

.field public static final ERROR_CLASS_NOT_FOUND:I = 0xa01

.field public static final ERROR_CONNECTION_INVALID_PARAM:I = 0x401

.field public static final ERROR_CONSTRUCTOR_EXCEPTION:I = 0xa03

.field public static final ERROR_CONSTRUCTOR_NOT_FOUND:I = 0xa02

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field public static final ERROR_SDK_NOT_INITIALIZED:I = 0x801

.field public static final FINDPEER_DEVICE_NOT_CONNECTED:I = 0x701

.field public static final FINDPEER_DUPLICATE_REQUEST:I = 0xc0d

.field public static final FINDPEER_SERVICE_NOT_FOUND:I = 0x702

.field private static final INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field public static final NETWORK_TYPE_CHANGE_ALREADY_SET:I = 0x2

.field public static final NETWORK_TYPE_CHANGE_NOTSUPPORT:I = 0x1

.field public static final NETWORK_TYPE_CHANGE_SUCCESS:I = 0x0

.field public static final NETWORK_TYPE_MOBILE:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field public static final PEER_AGENT_AVAILABLE:I = 0x1

.field private static final PEER_AGENT_AVAILABLE_THIN:I = 0x69

.field public static final PEER_AGENT_FOUND:I = 0x0

.field public static final PEER_AGENT_UNAVAILABLE:I = 0x2

.field private static final PEER_AGENT_UNAVAILABLE_THIN:I = 0x6a

.field private static final SERVICE_RECORD_NOT_FOUND:I = 0x309

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAAgentV2"

.field private static sAgentsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessory/SAAgentV2;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;


# instance fields
.field mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

.field private mAgentId:Ljava/lang/String;

.field mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

.field private mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

.field private mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

.field private mName:Ljava/lang/String;

.field private mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

.field private mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

.field private mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

.field private mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mProcessingCleanup:Z

.field private mSa:Lcom/samsung/android/sdk/accessory/SA;

.field private mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

.field private mSocketImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessfullConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->initializeAgent()V

    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructor should not be called for initializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 21
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Thread Name:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SASocket Imple class:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[SA_SDK]SAAgentV2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->initializeAgent()V

    return-void

    .line 24
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Constructor should not be called for initializing "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid parameter name:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SASocket;->acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAuthResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleServiceConnectionErrorCode(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->cleanup()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->loadAgentId()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->setNetworkConnectionTypeInternal(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerMexAgent()V

    return-void
.end method

.method static synthetic access$2100()Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->isProcessingCleanup()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->destroy()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->bindToFramework()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerService()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestPeerAgents()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleFindPeerErrorCode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handlePeerAgentUpdateErrorCode(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(Landroid/content/Intent;)V

    return-void
.end method

.method private bindToFramework()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->loadAgentId()V

    return-void
.end method

.method private cleanup()V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Performing agent cleanup"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->cleanupConnections(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanupAgent(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->unregisterAgent()V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->quit()V

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    .line 11
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->removeAgent(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mProcessingCleanup:Z

    .line 14
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cleanupConnections(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SASocket;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->forceClose()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SA;->clearSdkConfig()V

    return-void
.end method

.method private destroy()V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAAgentV2 - onDestroy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mProcessingCleanup:Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized fetchServiceProfile()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "fetch service profile description failed !!"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "config  util defualt instance  creation failed !!"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDefaultStorageContext()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getNetworkConnectionTypeInternal()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getNetworkConnectionType()I

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "set network connection type failed!"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    const/4 v0, -0x1

    return v0
.end method

.method private handleAuthErrorCode(I)V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eqz p1, :cond_2

    const/16 v1, 0x609

    if-eq p1, v1, :cond_1

    const/16 v1, 0x60a

    if-eq p1, v1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationResponse() error_code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_SUCCESS"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleAuthResponse(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "PEER_AGENT_KEY"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "CERT_TYPE"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "peerAgent"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "transactionId"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p1, "[SA_SDK]SAAgentV2"

    if-nez v2, :cond_0

    const-string v0, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/16 v3, 0x609

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failed error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Peer Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication success status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for peer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;-><init>(I[B)V

    .line 11
    invoke-virtual {p0, v2, p1, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    .line 12
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAuthErrorCode(I)V

    return-void
.end method

.method private handleFindPeerErrorCode(I)V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eqz p1, :cond_3

    const/16 v1, 0xc0d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x701

    if-eq p1, v1, :cond_1

    const/16 v1, 0x702

    if-eq p1, v1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFindPeerAgentsResponse() error_code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_SERVICE_NOT_FOUND"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_DEVICE_NOT_CONNECTED"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_DUPLICATE_REQUEST"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "onFindPeerAgentsResponse() -> PEER_AGENT_FOUND"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 3
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x409

    .line 6
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 7
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v1, "handleInvlaidPeerAction: mBackgroundWorker is null!"

    .line 9
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static handleLowMemory()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    .line 3
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAgentLowMemory()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleNetworkConnectionTypeErrorCode(I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "[SA_SDK]SAAgentV2"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkConnectionResponse() error_code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onNetworkConnectionResponse() -> NETWORK_TYPE_CHANGE_ALREADY_SET"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onNetworkConnectionResponse() -> NETWORK_TYPE_CHANGE_NOTSUPPORT"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleOnErrorCode(I)V
    .locals 3

    const/16 v0, 0x401

    const-string v1, "[SA_SDK]SAAgentV2"

    if-eq p1, v0, :cond_4

    const/16 v0, 0x800

    if-eq p1, v0, :cond_3

    const/16 v0, 0x801

    if-eq p1, v0, :cond_2

    const/16 v0, 0x900

    if-eq p1, v0, :cond_1

    const/16 v0, 0x901

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() error_code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onError() -> ERROR_PERMISSION_FAILED"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onError() -> ERROR_PERMISSION_DENIED"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onError() -> ERROR_SDK_NOT_INITIALIZED"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "onError() -> ERROR_FATAL"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "onError() -> ERROR_CONNECTION_INVALID_PARAM"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handlePeerAgentUpdateErrorCode(I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "[SA_SDK]SAAgentV2"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerAgentUpdated() error_code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_UNAVAILABLE"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_AVAILABLE"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleServiceConnectionErrorCode(I)V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eqz p1, :cond_4

    const/16 v1, 0x409

    if-eq p1, v1, :cond_3

    const/16 v1, 0x40d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x410

    if-eq p1, v1, :cond_1

    const/16 v1, 0x500

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnectionResponse() error_code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_REJECTED"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_ALREADY_EXIST"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_NETWORK"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_DUPLICATE_REQUEST"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_INVALID_PEERAGENT"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "onServiceConnectionResponse() -> CONNECTION_SUCCESS"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x404
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeAgent()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAAgentV2 - initialize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAAgentV2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$1;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    .line 11
    new-instance v0, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    .line 12
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "SDK initialization failed!"

    .line 13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x801

    .line 15
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 16
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->putAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 19
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    .line 20
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    .line 21
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

    .line 22
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    .line 23
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->fetchServiceProfile()V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->insertLog(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string v0, "Unable to start Agent thread."

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to start Agent.Worker thread creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.6.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAA2"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;
    .locals 8

    const-string v0, " "

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    .line 1
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiating SASocket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const-class v3, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    .line 4
    invoke-virtual {v6}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Class;

    iget-object v7, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/accessory/SASocket;

    return-object v3

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v5, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    goto/16 :goto_3

    :catch_4
    move-exception v3

    goto/16 :goto_4

    .line 11
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isProcessingCleanup()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mProcessingCleanup:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadAgentId()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getDefaultStorageContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AccessoryPreferences"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentId:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerMexAgent()V

    return-void
.end method

.method private notifyConnectionRequest(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    const-string v0, "[SA_SDK]SAAgentV2"

    if-nez p4, :cond_0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid initiator peer agent:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Ignoring connection request"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid local agent Id:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".Ignoring connection request"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_1
    invoke-virtual {p4, p1, p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection initiated by peer: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on Accessory: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Transaction: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "transactionId"

    .line 2
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "agentId"

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/os/PersistableBundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "[SA_SDK]SAAgentV2"

    if-nez p1, :cond_0

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    const-string v3, "transactionId"

    .line 7
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "peerAgent"

    .line 8
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p1, "Invalid initiator peer agent. Ignoring connection request"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;-><init>(Ljava/util/List;)V

    const-string v3, "agentId"

    .line 11
    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private static putAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private registerMexAgent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerService()V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    new-instance v1, Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->prepare()Ljava/util/concurrent/Future;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->start()V

    .line 4
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Registration failed! : ExecutionException"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v1, "Regisration failed! : InterruptedException"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->rejectServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Failed to reject Service connection!"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private static removeAgent(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->createInstance()V

    return-void
.end method

.method private requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed to retrieve service description.Ignoring service connection request"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x800

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SASocket;->initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    return-void
.end method

.method public static requestDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "requestDump()"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "====[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getServiceProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ]===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private requestPeerAgents()V
    .locals 5

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v0, 0x800

    .line 2
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Find peer request successfully enqueued."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find peer request failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 7
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleFindPeerErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Find Peer request failed!"

    .line 8
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 7

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v0, 0x800

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v5

    move-object v3, p1

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/accessory/SAAdapter;->authenticatePeeragent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v1
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Auth. request for peer: "

    if-nez v1, :cond_1

    .line 6
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " done successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed as reason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAuthErrorCode(I)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to request peer authentication!"

    .line 10
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private setNetworkConnectionTypeInternal(I)V
    .locals 4

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setNetworkConnectionType(ILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "set network connection type successfully enqueued."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set network connection type failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onNetworkConnectionResponse(II)V

    .line 5
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleNetworkConnectionTypeErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "set network connection type failed!"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private validateSocketImplementation(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor in the implementation class."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid socketClass param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to Accept service connection request from peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "acceptServiceConnection: mBackgroundWorker is null!"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accepting service connection with invalid peer agent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument peerAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected authenticatePeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication requested for peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "authenticatePeerAgent: mBackgroundWorker is null!"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument peerAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "SAAgentV2: nothing to dump"

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected final declared-synchronized findPeerAgents()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findPeer request received by:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "findPeerAgents: mBackgroundWorker is null!"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "[SA_SDK]SAAgentV2"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAgentHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x800

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :cond_0
    return-object v0
.end method

.method getLocalAgentId()Ljava/lang/String;
    .locals 5

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agent ID retrieved successfully for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Agent ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x309

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 4
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkVersion()I

    move-result v2

    const/16 v3, 0x12a

    if-lt v2, v3, :cond_0

    const-string v2, "Service record was not found in Accessory Framework.Registering service again!"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerService()V

    :try_start_1
    const-string v2, "Trying to fetch agent ID after re-registration"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    const-string v2, "Failed to retrieve service record after re-registration"

    .line 9
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :cond_0
    const-string v2, "Failed to retrieve service record"

    .line 10
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method protected getNetworkConnectionType()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getNetworkConnectionTypeInternal()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getServiceChannelId(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    const/4 v1, -0x1

    const-string v2, "[SA_SDK]SAAgentV2"

    if-nez v0, :cond_0

    const-string p1, "Failed because Service Profile is null"

    .line 2
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getServiceChannelSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAServiceChannel;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->getChannelId()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "Failed because of wrong index"

    .line 5
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getServiceChannelSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed because Service Profile is null"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getServiceProfileId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed because Service Profile is null"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProfileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed because Service Profile is null"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleAgentLowMemory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method handleConnectionRequest(Landroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/IJobListener;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params"

    .line 9
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method handleConnectionRequest(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    const/16 v0, 0x409

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 p2, 0x800

    if-eq p1, p2, :cond_2

    const/16 p2, 0x801

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eq p1, p2, :cond_1

    const/16 p2, 0x900

    if-eq p1, p2, :cond_0

    const/16 p2, 0x901

    if-eq p1, p2, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "Permission error!"

    .line 2
    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleOnErrorCode(I)V

    goto :goto_0

    :cond_1
    const-string p2, "Samsung Accessory SDK cannot be initialized"

    .line 4
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Samsung Accessory SDK cannot be initialized. Device or Build not compatible."

    .line 5
    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleOnErrorCode(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->cleanupConnections(Z)V

    const-string p2, "Samsung Accessory Framework has died!!"

    .line 8
    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleOnErrorCode(I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, p2, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleServiceConnectionErrorCode(I)V

    :goto_0
    return-void
.end method

.method handleMessageReceived()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method isFeatureEnabled(I)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isSocketSupported()Z

    move-result p1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isMexSupported()Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Peer authentication response received:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[SA_SDK]SAAgentV2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 4

    const-string v0, ": "

    const-string v1, "ACCEPT_STATE_ERROR: "

    const-string v2, "[SA_SDK]SAAgentV2"

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PeerAgent: null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PeerAgent: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string p2, "Invalid implementation of SAAgentV2.onFindPeerAgentsResponse(SAPeerAgent[], int) should be overrided!"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLowMemory()V
    .locals 2

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Service Low Memory"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNetworkConnectionResponse(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Connection response received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[SA_SDK]SAAgentV2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string p2, "Invalid implementation of SAAgentV2.onPeerAgentsUpdated(SAPeerAgent[], int) should be overrided!"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accepting connection request by default from Peer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Transaction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string p2, "No Implementaion for onServiceConnectionResponse(SAPeerAgent peerAgent, SASocket socket, int result)!"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method registerMessageInstance(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    .line 2
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentId:Ljava/lang/String;

    return-object p1
.end method

.method protected rejectServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to reject connection request from peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "rejectServiceConnection: mBackgroundWorker is null!"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting service connection with invalid peer agent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument peerAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseAgent()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected final requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    const-string v0, "[SA_SDK]SAAgentV2"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service connection requested for peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "requestServiceConection: mBackgroundWorker is null!"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument peerAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method runOnBackgroundThread(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method protected setNetworkConnectionType(I)V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "setNetworkConnectionType: mBackgroundWorker is null!"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x801

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method
