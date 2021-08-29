.class public Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileLoader;
.super Ljava/lang/Object;
.source "EntitlementProfileLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EntitlementProfileLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProfileFromCmcSettings()Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;
    .locals 11

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileLoader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createProfileFromCmcSettings:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;-><init>()V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setDeviceId(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setDeviceName(Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getDeviceCategory(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getLineId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setLineId(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getNmsAddrServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setNmsServerAddr(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setPhoneId(I)V

    .line 11
    new-instance v2, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isMessageLocalSwitchEnabled()Z

    move-result v4

    .line 13
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCallLocalSwitchEnabled()Z

    move-result v5

    .line 14
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isAtLeast1SdReadyForMessage()Z

    move-result v6

    .line 15
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isAtLeast1SdReadyForCall()Z

    move-result v7

    .line 16
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isMessageAllowedByPd(Ljava/lang/String;)Z

    move-result v8

    .line 17
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCallAllowedByPd(Ljava/lang/String;)Z

    move-result v9

    .line 18
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v10

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;-><init>(ZZZZZZZ)V

    .line 19
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->setActiveServices(Lcom/samsung/android/mdecservice/nms/config/ActiveServices;)V

    return-object v0
.end method
