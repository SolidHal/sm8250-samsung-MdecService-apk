.class public Lcom/samsung/android/mdeccommon/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/utils/CommonUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAll(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcOobe(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 4
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 5
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-static {v1, v2, v3}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    .line 8
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearAll : cmc_activation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->semGetCurrentUser()I

    move-result v1

    .line 11
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v2, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForUser(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;I)V

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v1, v2, v3}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    .line 13
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateCMCStatusLogging(Landroid/content/Context;)V

    .line 14
    sget v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    .line 15
    sget v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_2:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized disableCMCForMPSMorMUM(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableCMCForMPSMorMUM : cmc_activation("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->resetActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDeviceNameByModel()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmOrUpsmEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x200

    .line 3
    invoke-virtual {v0, p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x10

    .line 4
    invoke-virtual {v0, p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmOrUpsmEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static printSettingsDbLogs(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_oobe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_activation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_activation_for_skt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationForSkt(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_device_type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getGlobalSettingsDataInfo()Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmc_device_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmc_lines : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcLines()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmc_devices : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcDevices()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_service_version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcServiceVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_watch_activation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcWatchActivation(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_activation_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_message_activation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_message_activation_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_call_activation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_call_activation_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc_activation_intermediate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v2, 0x65

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getInt(Landroid/content/ContentResolver;II)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static resetActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activationType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->all:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 5
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 8
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->printSettingsDbLogs(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized restoreCMCActivation(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "restoreCMCActivation"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->isEmOrUpsmEnabled(Landroid/content/Context;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    .line 7
    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationForUser(Landroid/content/Context;I)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v2

    .line 8
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v3, :cond_2

    .line 9
    monitor-exit v0

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 10
    :try_start_3
    invoke-static {p0, v2, v3}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->setActivationInternal(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    .line 11
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previous cmc activation : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V
    .locals 1

    const-class v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->setActivationInternal(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static setActivationInternal(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivation activationValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRelOobeSequence : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->semGetCurrentUser()I

    move-result v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p1, v1, :cond_0

    .line 4
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 5
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 6
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForUser(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;I)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 8
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 9
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForUser(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;I)V

    .line 10
    :goto_0
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivation : cmc_activation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-eq v0, v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->all:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    .line 14
    :goto_2
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p1, v0, :cond_3

    .line 15
    invoke-static {p0, p2}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->setActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    goto :goto_3

    .line 16
    :cond_3
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->all:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-ne p2, p1, :cond_4

    .line 17
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 18
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 19
    :cond_4
    invoke-static {p0, p2}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->resetActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    :goto_3
    return-void
.end method

.method public static setActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activationType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->all:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-ne p1, v2, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 7
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 9
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->printSettingsDbLogs(Landroid/content/Context;)V

    return-void
.end method

.method public static setReceiverStatus(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcWatchActivation(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/BootCompleteReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 6
    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const/4 v5, 0x1

    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    if-eq v3, v5, :cond_1

    .line 7
    invoke-virtual {p0, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 8
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "BootCompletedReceiver status become enabled"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v0, v4, :cond_2

    if-ne v1, v4, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    .line 10
    invoke-virtual {p0, v2, v0, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 11
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "BootCompletedReceiver status become disabled"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static startMdecEventHandler(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MDEC_EVT_RUNNING_MODE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->startServiceForOwner(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    if-nez v0, :cond_0

    const-string p1, "es dump is null"

    .line 2
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
