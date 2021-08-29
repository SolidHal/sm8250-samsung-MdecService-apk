.class public Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;
.super Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;
.source "CmcRoutineActionProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final RESULT_CODE_AIRPLANE:I = -0x65

.field public static final RESULT_CODE_CMC_DISABLED:I = -0x68

.field public static final RESULT_CODE_MUM:I = -0x67

.field public static final RESULT_CODE_NETWORK_UNAVAILABLE:I = -0x69

.field public static final RESULT_CODE_NOSIM:I = -0x66

.field public static final RESULT_CODE_WIFI_TURNED_OFF:I = -0x6a

.field private static final ROUTINE_TAG:Ljava/lang/String; = "routine_action_cmc"

.field private static mConnManager:Landroid/net/ConnectivityManager;

.field private static mIsNormalExitForNetworkLock:Z

.field private static mIsWifiEnabled:Z

.field private static mNetLockObj:Ljava/lang/Object;

.field private static final mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mNetLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mIsNormalExitForNetworkLock:Z

    return p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "connManager is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 8
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mNetLockObj:Ljava/lang/Object;

    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isWifiOn(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mIsWifiEnabled:Z

    .line 11
    sget-object p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsWifiEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mIsWifiEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sput-boolean v1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mIsNormalExitForNetworkLock:Z

    .line 13
    sget-object p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mConnManager:Landroid/net/ConnectivityManager;

    sget-object v4, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    sget-object p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mNetLockObj:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 16
    :goto_0
    sget-object p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mConnManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 17
    sget-boolean p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->mIsNormalExitForNetworkLock:Z

    if-nez p0, :cond_1

    .line 18
    sget-object p0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "network is not available"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    monitor-exit v3

    return v1

    .line 20
    :cond_1
    monitor-exit v3

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "1"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p1, v0, :cond_1

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onAct : try cmcActivation"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    .line 5
    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCActivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 7
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->initCmcUi(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p1, v0, :cond_1

    .line 10
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onAct : try cmcDeActivation"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCDeactivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 13
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->initCmcUi(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentParam : tag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "routine_action_cmc"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p1, v0, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initCmcUi(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    return-void
.end method

.method public isSupport(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupport : tag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "routine_action_cmc"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isSupport : ok"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isSupport : not supported"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public onAct(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAct : tag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), param("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), isNegative("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAct : airplane error"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x65

    return p1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPresentSimCount(Landroid/content/Context;)I

    move-result p3

    if-ge p3, v1, :cond_2

    .line 7
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAct : nosim error"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x66

    return p1

    .line 8
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAct : mum error"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x67

    return p1

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    const/16 v2, -0x68

    if-ne p3, v0, :cond_4

    .line 11
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAct : oobe is not completed"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 12
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSaLogined(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 13
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAct : sa is not sign in"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 15
    sget-object p2, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p3, "onAct : network is unavailable"

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne p1, p2, :cond_6

    .line 17
    sget-object p1, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAct : wifi turned off"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x6a

    return p1

    :cond_6
    const/16 p1, -0x69

    return p1

    .line 18
    :cond_7
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/cmcsettings/settings/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/cmcsettings/settings/a;-><init>(Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->onCreate()Z

    move-result v0

    return v0
.end method
