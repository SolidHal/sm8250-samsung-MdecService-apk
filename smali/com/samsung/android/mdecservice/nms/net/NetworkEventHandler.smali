.class public Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;
.super Landroid/os/Handler;
.source "NetworkEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;,
        Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NwkEvtHandler"

.field private static sInstance:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDataRoaming:Z

.field private mIsPsOnlyReg:Z

.field private mNetworkState:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

.field private final mNetworkStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorNumeric:Ljava/lang/String;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceNetworkType:I

.field private mVoiceRoaming:Z

.field private final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mNetworkStateListeners:Ljava/util/Set;

    .line 3
    new-instance p2, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;-><init>(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4
    new-instance p2, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;-><init>(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 7
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 p2, 0xc

    .line 9
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p2, p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->registerPhoneStateListener()V

    .line 13
    new-instance p1, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mNetworkState:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->resetNetworkState()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->notifyDataConnectionState(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mVoiceNetworkType:I

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mVoiceNetworkType:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mIsPsOnlyReg:Z

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mIsPsOnlyReg:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mDataRoaming:Z

    return p0
.end method

.method static synthetic access$402(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mDataRoaming:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mVoiceRoaming:Z

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mVoiceRoaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mOperatorNumeric:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mNetworkStateListeners:Ljava/util/Set;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->sInstance:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->sInstance:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->sInstance:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->sInstance:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    return-object p0
.end method

.method private notifyDataConnectionState(IIZ)V
    .locals 3

    const-string v0, "NwkEvtHandler"

    const-string v1, "notifyDataConnectionState"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NwkEvtHandler"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDataRegState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataNetworkType()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataRegState()I

    move-result v0

    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_3

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->setDataNetworkType(I)V

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->setDataRegState(I)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->isWifiConnected()Z

    move-result p2

    .line 13
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;

    const-string v1, "NwkEvtHandler"

    const-string v2, "notifyingDataConnectionStateChanged:"

    .line 14
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataNetworkType()I

    move-result v1

    .line 17
    invoke-interface {v0, v1, p2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;->onDataConnectionStateChanged(IZ)V

    goto :goto_0

    .line 18
    :cond_2
    monitor-exit p1

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mNetworkState:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    return-object v0
.end method

.method public isWifiConnected()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    .line 3
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xc

    .line 4
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x4

    .line 5
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NwkEvtHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public registerForNetworkState(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;)V
    .locals 2

    const-string v0, "NwkEvtHandler"

    const-string v1, "registerForNetworkState:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPhoneStateListener()V
    .locals 3

    const-string v0, "NwkEvtHandler"

    const-string v1, "registerPhoneStateListener:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public resetNetworkState()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->setDataNetworkType(I)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->setDataRegState(I)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->setVoiceRegState(I)V

    :cond_0
    return-void
.end method
