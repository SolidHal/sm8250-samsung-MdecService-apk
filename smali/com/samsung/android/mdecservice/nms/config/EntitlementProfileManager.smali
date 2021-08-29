.class public Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;
.super Landroid/os/Handler;
.source "EntitlementProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;
    }
.end annotation


# static fields
.field private static final EVENT_ES_REQUEST_SA_INFO:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SA_REQUEST_MAX_RETRY:I = 0xc

.field private static final SA_REQUEST_RETRY_AFTER:I = 0xa

.field private static mEntitlementProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;


# instance fields
.field private isReadyToStartCaching:Z

.field private isSearchRequiredAfterAirplaneOff:Z

.field private final mCallbackLock:Ljava/lang/Object;

.field private final mCmcSettingListener:Lcom/samsung/android/cmcsetting/CmcSettingListener;

.field private mConfigListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultSmsAppObserver:Landroid/database/ContentObserver;

.field private mNetworkEventHandler:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

.field private final mNetworkStateListener:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;

.field private mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

.field private mSaAccessToken:Ljava/lang/String;

.field private mSaAuthUrl:Ljava/lang/String;

.field private mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

.field private mSaBroadcastReceiver:Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

.field private mSaId:Ljava/lang/String;

.field private mSaRetryCount:I

.field private final mSamsungAccountInfoLock:Ljava/lang/Object;

.field private mSettingDbObserver:Landroid/database/ContentObserver;

.field private final mUpsmEventReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p2, ""

    .line 2
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAccessToken:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAuthUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaBroadcastReceiver:Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

    .line 6
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mCallbackLock:Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSamsungAccountInfoLock:Ljava/lang/Object;

    .line 8
    new-instance p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mCmcSettingListener:Lcom/samsung/android/cmcsetting/CmcSettingListener;

    .line 9
    new-instance p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNetworkStateListener:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;

    .line 10
    new-instance p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$3;

    new-instance v0, Landroid/os/Handler;

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$3;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mDefaultSmsAppObserver:Landroid/database/ContentObserver;

    .line 12
    new-instance p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$4;

    new-instance v0, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$4;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSettingDbObserver:Landroid/database/ContentObserver;

    .line 14
    new-instance p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$5;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    new-instance p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    .line 16
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    .line 17
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mCmcSettingListener:Lcom/samsung/android/cmcsetting/CmcSettingListener;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->registerListener(Lcom/samsung/android/cmcsetting/CmcSettingListener;)V

    .line 18
    new-instance p2, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    .line 19
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->DEACTIVATED:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    sput-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaRetryCount:I

    .line 22
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNetworkEventHandler:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToActivate(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    sget-object p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->ACTIVE:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    const-string p3, "Mdec should be ACTIVE from init time"

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->transitEntitlementState(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "status is DEACTIVE at init time "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->makeLogForReadyToActivate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "[NMS2]"

    invoke-virtual {p2, v0, p3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result p2

    if-nez p2, :cond_2

    .line 27
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcActivated()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToStartCaching:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->setSearchRequiredAfterAirplaneOff(Z)V

    .line 29
    sget-object p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Register mdecservice registerReceiver"

    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mDefaultSmsAppObserver:Landroid/database/ContentObserver;

    const-string p3, "sms_default_application"

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->registerContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V

    .line 31
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSettingDbObserver:Landroid/database/ContentObserver;

    const-string p3, "mobile_data"

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->registerContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V

    .line 32
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSettingDbObserver:Landroid/database/ContentObserver;

    const-string p3, "wifi_on"

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->registerContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V

    .line 33
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSettingDbObserver:Landroid/database/ContentObserver;

    const-string p3, "airplane_mode_on"

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->registerContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V

    .line 34
    new-instance p2, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

    invoke-direct {p2}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaBroadcastReceiver:Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

    .line 35
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->setSaBroadcastListner(Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;)V

    .line 36
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaBroadcastReceiver:Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lb/l/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->registerUpsmEventReceiver()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->requestSamsungAccountInfo(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->checkIfCmcSettingUpdated()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->onEntitlementStateChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaRetryCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAuthUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAuthUrl:Ljava/lang/String;

    return-object p1
.end method

.method private checkIfCmcSettingUpdated()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkIfCmcSettingUpdated:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileLoader;->createProfileFromCmcSettings()Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getPhoneId()I

    move-result v0

    .line 6
    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old profiles="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new profiles="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "active sim slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    sput-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Line Id changed. trigger deregister"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishTryDeregisterEvent()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkIfProfileValid()Z
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    .line 2
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getActiveServiceSet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "message"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v2

    .line 3
    :cond_0
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getActiveServiceSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getNmsServerAddr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v6, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Either Active Service or Nms Server Url is not valid,"

    invoke-static {v6, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v6, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid profile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0001_EVENT_CACHING:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToStartCaching:Z

    if-nez v3, :cond_3

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v3

    if-nez v3, :cond_4

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcActivated()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    if-eq v0, v1, :cond_5

    .line 11
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->notifyCachingAvailabilityChanged(Z)V

    .line 12
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToStartCaching:Z

    :cond_5
    return v4
.end method

.method private dumpActiveServices()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isMessageLocalSwitchEnabled()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCallLocalSwitchEnabled()Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isAtLeast1SdReadyForMessage()Z

    move-result v3

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isAtLeast1SdReadyForCall()Z

    move-result v4

    .line 6
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isMessageAllowedByPd(Ljava/lang/String;)Z

    move-result v5

    .line 7
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCallAllowedByPd(Ljava/lang/String;)Z

    move-result v0

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v6

    .line 9
    sget-object v7, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActiveServices: isMessageLocalSwitchEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCallLocalSwitchEnabled="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAtLeast1SdReadyForMessage="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAtLeast1SdReadyForCall="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMessageAllowedByPd="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCallAllowedByPd="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isWatchActivated="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NMS2]"

    invoke-static {v1, v7, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getLineId(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getLineId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static getMsgName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EVENT_ES_REQUEST_SA_INFO"

    return-object p0
.end method

.method public static getNmsLogServerAddr(II)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getNmsServerAddr()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$NmsServer;->NMS_LOG_SERVER_URL_POSTFIX_V2:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$NmsServer;->NMS_LOG_SERVER_URL_POSTFIX_V1:Ljava/lang/String;

    .line 5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNmsMsgServerAddr(II)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getNmsServerAddr()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$NmsServer;->NMS_MSG_SERVER_URL_POSTFIX_V2:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$NmsServer;->NMS_MSG_SERVER_URL_POSTFIX_V1:Ljava/lang/String;

    .line 5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPdDeviceId(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    return-object p0
.end method

.method private inactivateEntitlementProfile()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->DEACTIVATED:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inactivateEntitlementProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->makeLogForReadyToActivate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->transitEntitlementState(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->initEntitlementProfile()V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notify Entitlement State Changed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onEntitlementProfileUpdated(Ljava/util/Map;)V

    return-void
.end method

.method private initEntitlementProfile()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initEntitlementProfile:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAccessToken:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAuthUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaRetryCount:I

    return-void
.end method

.method private isDataEnabled(Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isWifiOn(Landroid/content/Context;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const-string v4, "]"

    const-string v5, ", isAirplaneOn="

    const-string v6, ", isWifiOn="

    const-string v7, " [isMobileDataOn="

    const-string v8, "isDataEnabled="

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NMS2]"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method private isEmOrUpsmEnabled(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x200

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "isEmOrUpsmEnabled="

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[NMS2]"

    invoke-static {v2, p1, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method private isMdecActivated(Z)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcActivated()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "]"

    const-string v4, ", isCmcWatchActivated="

    const-string v5, " [isCmcActivated="

    const-string v6, "isMdecActivated="

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NMS2]"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method private isReadyToActivate(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isMdecActivated(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isDataEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isEmOrUpsmEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isDataRestrictionSatisfied(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "isReadyToActivate: "

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[NMS2]"

    invoke-static {v2, p1, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public static isReadyToSync()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntitlementState: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->READYTOSYNC:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeLogForReadyToActivate()Ljava/lang/String;
    .locals 13

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcActivated()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 3
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v5

    .line 4
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isWifiOn(Landroid/content/Context;)Z

    move-result v6

    .line 5
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v5, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    if-eqz v6, :cond_4

    :cond_3
    move v8, v3

    goto :goto_2

    :cond_4
    move v8, v2

    .line 6
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 7
    iget-object v10, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x200

    .line 8
    invoke-virtual {v9, v10}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v10

    if-nez v10, :cond_5

    const/16 v10, 0x10

    .line 9
    invoke-virtual {v9, v10}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    move v9, v3

    goto :goto_3

    :cond_6
    move v9, v2

    .line 10
    :goto_3
    iget-object v10, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNetworkEventHandler:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->isWifiConnected()Z

    move-result v10

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    if-ne v11, v12, :cond_7

    move v11, v3

    goto :goto_4

    :cond_7
    move v11, v2

    :goto_4
    if-nez v1, :cond_8

    if-nez v10, :cond_8

    if-nez v11, :cond_9

    if-eqz v5, :cond_9

    :cond_8
    move v2, v3

    .line 12
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " isMdecActivated : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "[cmcActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", watchActive "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isDataEnabled : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "[mobile "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wifiOn "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", airplane "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEmOrUpsmEnabled : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isDataRestrictionSatisfied : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "[watchActive "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wifiCon "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", restricted "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mobile "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyCachingAvailabilityChanged(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyonCachingAvailabilityChanged: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mConfigListeners:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;->onCachingAvailabilityChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notify notifyCachingAvailabilityChange finish"

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private onEntitlementStateChanged()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEntitlementStateChanged: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->DEACTIVATED:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0001_EVENT_CACHING:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToStartCaching:Z

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    if-eq v0, v1, :cond_2

    .line 7
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->notifyCachingAvailabilityChanged(Z)V

    .line 8
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToStartCaching:Z

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAccessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAuthUrl:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->requestSamsungAccountInfo(Z)V

    move v1, v2

    .line 12
    :cond_5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->checkIfProfileValid()Z

    move-result v2

    .line 14
    :cond_6
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v2, :cond_8

    .line 15
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->checkIfCmcSettingUpdated()Z

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->checkIfProfileValid()Z

    move-result v2

    .line 18
    :cond_8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSaInfoReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isEsProfileValid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->READYTOSYNC:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ready to sync with profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->transitEntitlementState(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->ACTIVE:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ES profile is not ready yet, isSaInfoReady="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->transitEntitlementState(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;Ljava/lang/String;)V

    .line 23
    :goto_1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notify Entitlement State Changed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onEntitlementProfileUpdated(Ljava/util/Map;)V

    return-void
.end method

.method private registerContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerUpsmEventReceiver()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setUpsmEventReceiver:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private transitEntitlementState(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitEntitlementState: new ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], old ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "[NMS2]"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sput-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[NMS2]"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->increaseIndent(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEntitlementState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEntitlementProfileMap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToActivate(Z)Z

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->dumpActiveServices()V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->decreaseIndent(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;)V

    return-void
.end method

.method public getSaAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSaAuthUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getMsgName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->requestSamsungAccountInfo(Z)V

    :goto_0
    return-void
.end method

.method public isDataRestrictionSatisfied(Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNetworkEventHandler:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->isWifiConnected()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 3
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v2

    .line 4
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    const-string v4, "]"

    const-string v5, ", isCmcWatchActivated="

    const-string v6, ", isWifiConnected="

    const-string v7, " [isMobileDataRestricted="

    const-string v8, "isDataRestrictionSatisfied="

    if-eqz p1, :cond_3

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NMS2]"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v3
.end method

.method public isDeactivated()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntitlementState: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->DEACTIVATED:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchRequiredAfterAirplaneOff()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isSearchRequiredAfterAirplaneOff:Z

    return v0
.end method

.method public registerConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerConfigListener:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "listener is null.."

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0001_EVENT_CACHING:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compatibility version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0001_EVENT_CACHING:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->getCompatabilityFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not satisfied."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mConfigListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mConfigListeners:Landroid/os/RemoteCallbackList;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 12
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToStartCaching:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->notifyCachingAvailabilityChanged(Z)V

    return-void
.end method

.method public registerNetworkStateListener()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerNetworkStateListener:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNetworkEventHandler:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNetworkStateListener:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->registerForNetworkState(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;)V

    return-void
.end method

.method public requestSamsungAccountInfo(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSamsungAccountInfoLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x64

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Request already ongoing"

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaRetryCount:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    const-string v1, "[NMS2]"

    const-string v2, "requestSamsungAccountInfo: Reached to the max sa request retry count"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mProfileManHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    const-string v3, "[NMS2]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestSamsungAccountInfo: retry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_2

    const-string p1, "EXPIRED_ACCESS_TOKEN"

    .line 10
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaAccessToken:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 12
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mSaRetryCount:I

    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSearchRequiredAfterAirplaneOff(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isSearchRequiredAfterAirplaneOff:Z

    return-void
.end method

.method public triggerDisablingWhenDeactivated()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "triggerDisablingWhenDeactivated:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->DEACTIVATED:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->initEntitlementProfile()V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notify Entitlement State Changed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementProfileMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onEntitlementProfileUpdated(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public unregisterConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mConfigListeners:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public updateEntitlementState()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateEntitlementState:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToActivate(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->mEntitlementState:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->READYTOSYNC:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->ACTIVE:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntitlementState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->makeLogForReadyToActivate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->transitEntitlementState(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->inactivateEntitlementProfile()V

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->onEntitlementStateChanged()V

    return-void
.end method
