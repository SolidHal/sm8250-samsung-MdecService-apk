.class public Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;
.super Landroid/app/Service;
.source "CMCUIForegroundService.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mdecAddDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

.field private mdecDeleteDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

.field private mdecPersonalInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;

.field private mdecSwitchChangedListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

.field private mdecUpdateInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->doOnJoinServiceAsPrimaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->stopForegroundService()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->doOnJoinServiceAsSecondaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->doOnUpdateJoinedService(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->doOnDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->isErrorCode(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 0

    return-void
.end method

.method private deleteAndReInitializeData()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->updateSecondaryDeviceData()V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->updatePrimaryDeviceData()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkType(Landroid/content/Context;I)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    return-void
.end method

.method private doOnDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteSecondaryDevice: deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getRemoveDeviceSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p2

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/util/HashSet;

    invoke-static {p3, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRemoveDeviceSet(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 5
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getRemoveDeviceSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 6
    sget-object p2, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string p3, "onDeleteSecondaryDevice: setProgressDisplay"

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->removeDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private doOnJoinServiceAsPrimaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddPrimaryDevice: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->deleteAndReInitializeData()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, v1, :cond_1

    .line 4
    :cond_0
    sget-object v1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "UIService: onAddPrimaryDevice: setDeviceTypeActivationOOBECMCVersion"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->setDeviceTypeActivationOOBECMCVersion(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 7
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->isAppIsInBackground(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    sget-object p1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "UIService: onAddPrimaryDevice: REASON_CONNECT_MAX_PRIMARY_DEVICES && isAppIsInBackground"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setDialogOpened(Landroid/content/Context;Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->isAppIsInBackground(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 11
    sget-object p1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAddPrimaryDevice: result == false"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private doOnJoinServiceAsSecondaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddSecondaryDevice: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllSDData(Landroid/content/Context;)V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, p1, :cond_1

    .line 4
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "UIService: onAddSecondaryDevice: setDeviceTypeActivationOOBECMCVersion"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->setDeviceTypeActivationOOBECMCVersion(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkType(Landroid/content/Context;I)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    return-void
.end method

.method private doOnUpdateJoinedService(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatePrimaryDeviceForSimSlotChanged: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " selectedSimSlotIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, p1, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setConfigurationForUseMobileData(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkTypeForSlotId(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkType(Landroid/content/Context;I)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->setDeviceTypeActivationOOBECMCVersion(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->updatePrimaryDeviceData()V

    :cond_1
    return-void
.end method

.method private isAppIsInBackground(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "activity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private isErrorCode(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setDeviceTypeActivationOOBECMCVersion(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setDeviceTypeActivationOOBECMCVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->addinOOBEHistory(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setOOBE(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    return-void
.end method

.method private stopForegroundService()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;->SERVICE_LOCK_OBJ:Lcom/samsung/android/cmcsettings/Interface/ServiceLockObj;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x66

    invoke-static {v1, v3, v2}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getInt(Landroid/content/ContentResolver;II)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v2}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    .line 4
    sget-object v1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopForegroundService called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updatePrimaryDeviceData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllPDData(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->addThisPhoneDeviceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateSecondaryDeviceData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllSDData(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->addNewDevices(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->stopForegroundService()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->isAppIsInBackground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelectedForJoining(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->joinAsXDevice(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecAddDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecDeleteDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecPersonalInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecSwitchChangedListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecUpdateInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterUpdateInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 3
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->postUIServiceNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    const p2, 0x1343b18

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 4
    new-instance p1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$1;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecAddDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    .line 5
    new-instance p1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$2;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecDeleteDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    .line 6
    new-instance p1, Lcom/samsung/android/cmcsettings/services/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/services/a;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecPersonalInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;

    .line 7
    new-instance p1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecSwitchChangedListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    .line 8
    sget-object p1, Lcom/samsung/android/cmcsettings/services/b;->b:Lcom/samsung/android/cmcsettings/services/b;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecUpdateInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecAddDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecDeleteDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecPersonalInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecSwitchChangedListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 13
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->mdecUpdateInfoListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerUpdateInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    const/4 p1, 0x2

    return p1
.end method
