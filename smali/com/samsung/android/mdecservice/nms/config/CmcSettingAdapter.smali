.class public Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;
.super Ljava/lang/Object;
.source "CmcSettingAdapter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSettingAdapter"

.field private static sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

.field private static sInstance:Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init CmcSettingAdapter"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;Lcom/samsung/android/cmcsetting/CmcSettingListener;)Z

    return-void
.end method

.method public static getActiveSimSlot()I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineActiveSimSlot()I

    move-result v0

    return v0
.end method

.method public static getDeviceCategory(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceCategory(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public static getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object v0

    return-object v0
.end method

.method public static getNmsAddrServer()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineNmsAddrList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sInstance:Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sInstance:Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sInstance:Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sInstance:Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    return-object p0
.end method

.method public static isAtLeast1SdReadyForCall()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistCallActivationSD()Z

    move-result v0

    return v0
.end method

.method public static isAtLeast1SdReadyForMessage()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistMessageActivationSD()Z

    move-result v0

    return v0
.end method

.method public static isCallAllowedByPd(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCallLocalSwitchEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcCallActivation()Z

    move-result v0

    return v0
.end method

.method public static isCmcActivated()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result v0

    return v0
.end method

.method public static isCmcWatchActivated()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getWatchActivation()Z

    move-result v0

    return v0
.end method

.method public static isMessageAllowedByPd(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isMessageAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMessageLocalSwitchEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcMessageActivation()Z

    move-result v0

    return v0
.end method

.method public static registerListener(Lcom/samsung/android/cmcsetting/CmcSettingListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->sCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/CmcSettingListener;)Z

    return-void
.end method
