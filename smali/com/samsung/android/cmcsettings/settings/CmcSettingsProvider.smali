.class public Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;
.super Lcom/samsung/android/settings/external/ExternalSettingsProvider;
.source "CmcSettingsProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.mdecservice.cmcsettings"

.field public static final CMC_SETTINGS_KEY:Ljava/lang/String; = "cmc_menu_setting"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final EVENT_SHOW_TOAST:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "mdec/CmcSettingsProvider"

.field public static final METHOD_UPDATE_MENU_DATA:Ljava/lang/String; = "updateMenuData"


# instance fields
.field private handler:Landroid/os/Handler;

.field private final mAddMenuData:Ljava/lang/Runnable;

.field private mCMCActivationObserver:Landroid/database/ContentObserver;

.field private mCMCForegroundServiceRunningObserver:Landroid/database/ContentObserver;

.field private mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateMenuData:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.mdecservice.cmcsettings"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$1;-><init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$2;-><init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$3;-><init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mCMCActivationObserver:Landroid/database/ContentObserver;

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/settings/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/settings/b;-><init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mUpdateMenuData:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$4;-><init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mCMCForegroundServiceRunningObserver:Landroid/database/ContentObserver;

    .line 7
    new-instance v0, Lcom/samsung/android/cmcsettings/settings/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/settings/c;-><init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mAddMenuData:Ljava/lang/Runnable;

    return-void
.end method

.method private showNoSimToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isCMCForegroundServiceRunning(Landroid/content/Context;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUpdateMenuData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mdec/CmcSettingsProvider"

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->addPreferenceMenuData()V

    return-void
.end method

.method public addPreferenceMenuData()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcMenuSupported(Landroid/content/Context;)Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v1, "mdec/CmcSettingsProvider"

    const-string v2, "Not allowed in guest mode, hide the CMC menu"

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v2

    .line 6
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isCMCForegroundServiceRunning(Landroid/content/Context;)Z

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0f0020

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eq v4, v2, :cond_1

    move v3, v6

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    xor-int/lit8 v0, v4, 0x1

    .line 9
    new-instance v4, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    const-string v6, "cmc_menu_setting"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->getMenuData(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;-><init>(Lcom/samsung/android/settings/external/DynamicMenuData;)V

    .line 10
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setVisible(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setEnabled(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setColorPrimaryDark(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setChecked(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->build()Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->addMenuData(Lcom/samsung/android/settings/external/DynamicMenuData;)V

    return-void
.end method

.method public synthetic b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->mShouldUpdateState:Z

    const-string v0, "mdec/CmcSettingsProvider"

    const-string v1, " mAddMenuData "

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->addPreferenceMenuData()V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "mdec/CmcSettingsProvider"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " arg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->restoreCMCActivation(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcMenuSupportedOld(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;->supported:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;->notSupported:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcMenuSupportedOld(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_MENU_SUPPORTED;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mAddMenuData:Ljava/lang/Runnable;

    monitor-enter v0

    :try_start_0
    const-string v1, "get_menu_list"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mAddMenuData:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const-string v1, "cmc_menu_setting"

    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->reportDataChange(Ljava/lang/String;)V

    .line 9
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mUpdateMenuData:Ljava/lang/Runnable;

    monitor-enter v1

    :try_start_1
    const-string v0, "updateMenuData"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mUpdateMenuData:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, "cmc_menu_setting"

    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->reportDataChange(Ljava/lang/String;)V

    .line 14
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method protected onCheckedChanged(Ljava/lang/String;Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setOOBE(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v1

    .line 5
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 6
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onCheckedChanged: s = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " enabling = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " deviceType = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentSlot = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isDeviceTypePrimary = "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mdec/CmcSettingsProvider"

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "updateMenuData"

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 7
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0, v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->showNoSimToast()V

    .line 9
    invoke-virtual {p0, p1, v6, v6}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return v4

    :cond_4
    if-eqz p2, :cond_5

    .line 10
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDefaultApplicationStatus(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    :cond_6
    const-string p2, "oobe ! done : launchCmcWelcomeActivity"

    .line 11
    invoke-static {v1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_reason_cmcopen"

    const-string v1, "SETTINGS"

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {p0, p1, v6, v6}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return v4

    :cond_7
    const-string v2, "oobe already done : toggle on/off"

    .line 17
    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 19
    invoke-static {v0, v4}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    const-string p2, "no network connection"

    .line 20
    invoke-static {v1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0, p1, v6, v6}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return v4

    .line 23
    :cond_8
    invoke-static {v0, v4}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    const-string v2, "startForeground Called"

    .line 24
    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    const/16 v1, 0x1bfa

    if-eqz p2, :cond_9

    const-wide/16 v7, 0x1

    .line 26
    invoke-static {v0, v4, v1, v7, v8}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    .line 27
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCActivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_1

    :cond_9
    const-wide/16 v7, 0x0

    .line 28
    invoke-static {v0, v4, v1, v7, v8}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    .line 29
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCDeactivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 30
    :goto_1
    invoke-static {v0, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 31
    invoke-virtual {p0, p1, v6, v6}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return v3
.end method

.method protected onCreateData()V
    .locals 4

    const-string v0, "mdec/CmcSettingsProvider"

    const-string v1, "onCreateData"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;-><init>()V

    const-string v1, "cmc_menu_setting"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v0

    const v1, 0x7f0f0020

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->setTitleRes(I)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->build()Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->addMenuData(Lcom/samsung/android/settings/external/DynamicMenuData;)V

    .line 7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_activation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mCMCActivationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getUriFor(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mCMCForegroundServiceRunningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "sim_state_change_local_broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/l/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
