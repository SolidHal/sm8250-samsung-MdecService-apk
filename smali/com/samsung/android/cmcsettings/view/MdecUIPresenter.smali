.class public Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;
.super Ljava/lang/Object;
.source "MdecUIPresenter.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    return-void
.end method

.method private addCallAndMessageDetailFragment(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    const-string v2, "CallAndMessageDetailFragment"

    const v3, 0x7f0900ae

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method private addOrRemovePdFragment()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    const-string v1, "PrimaryDeviceFragment"

    const v2, 0x7f0900af

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->replaceFragment(Ljava/lang/String;I)V

    return-void
.end method

.method private addSuggestionTipCardFragment()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    const-string v2, "SuggestionTipCardFragment"

    const v3, 0x7f0900b1

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-void
.end method

.method private isLaunchFromOtherApp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CALLAPP"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MESSAGEAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OTHERAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public activate()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSlotWithSimCard(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->registerDevice(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCActivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method public activatePDDevice()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimCheckSkip(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v3, 0x103012b

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0f00a4

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6
    invoke-static {v0, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    return-void

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDefaultApplicationStatus(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onShowDefaultAppsDialog()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onLaunchSimOOBEDialog()V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->activate()V

    :goto_1
    return-void
.end method

.method public activateSDDevice()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDefaultApplicationStatus(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onShowDefaultAppsDialog()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->activate()V

    :goto_0
    return-void
.end method

.method public changeSelectedSim(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "changeSelectedSim: REQUEST_SELECT_SIM_CARD: RESULT_OK: case sim idx not matching"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 6
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->updatePrimaryDeviceForSimSlotChanged(ILjava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public deactivateAndDeregisterDevice()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCDeactivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public flowAfterSAAndWelcomeDone()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "flowAfterSAAndWelcomeDone"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "flowAfterSAAndWelcomeDone: PD case"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->activatePDDevice()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "flowAfterSAAndWelcomeDone: SD case"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->activateSDDevice()V

    :goto_0
    return-void
.end method

.method public initFragments()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->addOrRemovePdFragment()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->initSDCallAndMessageFragment()V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->addSuggestionTipCardFragment()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->updateLinkedDeviceFragment(Z)V

    return-void
.end method

.method public initSDCallAndMessageFragment()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->SecondaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getDeviceInfo(Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    const-string v2, "CallAndMessageDetailFragment"

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->removeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceCategoryStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->addCallAndMessageDetailFragment(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public launchReasonAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->isLaunchFromOtherApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSAinOOBEHistory(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onResume: launchReason : Call or Message App and SA in oobe history, show dialog"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p1, v1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onShowTurnOnCMCDialogSD(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "SETTINGS"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "QR_CAMERA"

    const-string v3, "SAMSUNG_SERVICE"

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->isLaunchFromOtherApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSAinOOBEHistory(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->launchingFromQRAndAccountNotSame(Ljava/lang/String;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 13
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getSwitchState(Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    if-ne p2, v0, :cond_4

    .line 14
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->intermediateOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;Z)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->restartCMCOnCondition()V

    :cond_5
    :goto_0
    return-void
.end method

.method public launchingFromQRAndAccountNotSame(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 3
    sget-object v1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enc Account :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    .line 4
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AES DEC fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SA Account mismatched! - SAID(Device) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SA Account mismatched! - SAID(inQR) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onLaunchSwitchAccountDialog()V

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SA Account matched! - SAID(Device) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SA Account matched! - SAID(inQR) : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    return-void
.end method

.method public performSwitchOperations(ZLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v1

    .line 3
    sget-object v2, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwitchChanged: isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " slotIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    sget-object p2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->reverted:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->showNoSimToast()V

    return-void

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    sget-object p2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->reverted:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 10
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    return-void

    .line 11
    :cond_3
    invoke-static {v0, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    if-eqz p1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {v1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->doSAVerificationProcess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->launchingFromQRAndAccountNotSame(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 14
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onRequestAccessTokenProcess()V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->deactivateAndDeregisterDevice()V

    .line 16
    :cond_5
    :goto_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result p2

    const/16 v1, 0x1bfa

    if-eqz p1, :cond_6

    const-wide/16 v2, 0x1

    goto :goto_2

    :cond_6
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v0, p2, v1, v2, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    return-void
.end method

.method public refreshPrimaryDeviceFragment()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v4, v0, v2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->addThisPhoneDeviceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllPDData(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public registerDevice(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDevice: mSimSlotIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setSimSelectedForJoining(Landroid/content/Context;I)V

    .line 4
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kor"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerDevice Region is: KOR"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->updatePDPAgreement()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 8
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->joinAsXDevice(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public updateLinkedDeviceFragment(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->refreshSuggestionTipCardFragment(Z)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0900b0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    const-string v1, "SECONDARY_DEVICES_REMOVE_LIST_FRAGMENT"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;->UIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    const-string v1, "SECONDARY_DEVICES_LIST_FRAGMENT"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->replaceFragment(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
