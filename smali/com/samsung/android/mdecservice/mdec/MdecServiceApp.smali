.class public Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;
.super Landroid/app/Application;
.source "MdecServiceApp.java"


# static fields
.field private static final CMC_TILE_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.cmcsettings.UI.qstiles.MdecServiceTiles"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCMCTileEnabledState(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.samsung.android.cmcsettings.UI.qstiles.MdecServiceTiles"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMC Tile Service State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static initDbValues(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->unknown:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDefaultDeviceType()Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcDeviceType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;)V

    .line 5
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getSimSelected()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->wifiOnly:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcNetworkType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getSimSelected()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->useMobileData:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcNetworkType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;)V

    .line 10
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->initEssentialValues(Landroid/content/Context;)V

    return-void
.end method

.method private initSettingValueforCMC(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initSettingValueforCMC"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->initGlobalProvider(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setDialogOpened(Landroid/content/Context;Z)V

    return-void
.end method

.method private static initSupportedValues(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;->notSupported:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcMenuSupportedOld(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;->supported:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcMenuSupported(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;)V

    return-void
.end method

.method public static declared-synchronized refreshTileService()V
    .locals 4

    const-class v0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x67

    invoke-static {v1, v3, v2}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getInt(Landroid/content/ContentResolver;II)I

    move-result v1

    .line 2
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerActivityLifecycleCallbacks()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/services/ActivityLifeCycleListener;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/services/ActivityLifeCycleListener;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private static setAppContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setCMCTileStateAsEnabled(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.samsung.android.cmcsettings.UI.qstiles.MdecServiceTiles"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, v1, p0, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Set CMC tile component state as enabled"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Component not found, not enabling it: com.samsung.android.cmcsettings.UI.qstiles.MdecServiceTiles"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setupLifecycleListener(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;

    invoke-direct {v0, p1}, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Landroidx/lifecycle/r;->h()Landroidx/lifecycle/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroidx/lifecycle/r;->h()Landroidx/lifecycle/j;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    :cond_0
    return-void
.end method

.method private showVersion()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    .line 4
    :goto_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdec version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->setAppContext(Landroid/content/Context;)V

    .line 5
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createAllChannels(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->initSettingValueforCMC(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->setupLifecycleListener(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->registerActivityLifecycleCallbacks()V

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->showVersion()V

    .line 10
    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->updateDefaultAcs(Landroid/content/Context;)Z

    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, ""

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v3, "activity"

    .line 14
    invoke-virtual {p0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-nez v3, :cond_1

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not initalize IMS when AM is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 18
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_2

    .line 19
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_2

    .line 20
    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current process :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->initSA(Landroid/app/Application;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateCMCStatusLogging(Landroid/content/Context;)V

    .line 24
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->initSupportedValues(Landroid/content/Context;)V

    .line 25
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->initDbValues(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 26
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getCMCTileEnabledState(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 27
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->setCMCTileStateAsEnabled(Landroid/content/Context;)V

    .line 28
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->setReceiverStatus(Landroid/content/Context;)V

    return-void
.end method
