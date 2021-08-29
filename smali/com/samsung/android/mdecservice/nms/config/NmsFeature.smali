.class public Lcom/samsung/android/mdecservice/nms/config/NmsFeature;
.super Ljava/lang/Object;
.source "NmsFeature.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NmsFeature"

.field static final isPerformanceTest:Z = false

.field private static mCmcVersion:Ljava/lang/String; = null

.field private static mCompatibilityFeature:Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature; = null

.field private static mDeviceType:Ljava/lang/String; = null

.field private static mIsNmsInitialized:Z = false

.field private static mPhoneCount:I

.field private static sInstance:Lcom/samsung/android/mdecservice/nms/config/NmsFeature;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mContext:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->initFeature()V

    return-void
.end method

.method public static getCmcVersionInternal()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.cmc.version"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceTypeInternal()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "pd"

    if-eqz v0, :cond_0

    const-string v1, "sd"

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "ro.cmc.device_type"

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/config/NmsFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->sInstance:Lcom/samsung/android/mdecservice/nms/config/NmsFeature;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->sInstance:Lcom/samsung/android/mdecservice/nms/config/NmsFeature;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->sInstance:Lcom/samsung/android/mdecservice/nms/config/NmsFeature;

    return-object p0
.end method

.method public static getPhoneCount()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mPhoneCount:I

    return v0
.end method

.method private initFeature()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mCompatibilityFeature:Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getDeviceTypeInternal()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mDeviceType:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mDeviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getCmcVersionInternal()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mCmcVersion:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mCmcVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mCmcVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdeccommon/net/ITelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mPhoneCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 8
    sput v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mPhoneCount:I

    :goto_0
    return-void
.end method

.method public static isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mCompatibilityFeature:Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result p0

    return p0
.end method

.method public static isNmsInitialized()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mIsNmsInitialized:Z

    return v0
.end method

.method public static isPerformanceTest()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isPrimaryDeviceInternal()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mDeviceType:Ljava/lang/String;

    const-string v1, "pd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setNmsInitialized(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->mIsNmsInitialized:Z

    return-void
.end method
