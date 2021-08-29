.class public Lcom/samsung/android/cmcsettings/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/Utils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/Utils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAll(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->clearAll(Landroid/content/Context;)V

    return-void
.end method

.method public static convertToPX(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ScreenConfigUtil;->isScreenLarge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f001f

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0f0022

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataEnabledSIM(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getDefaultApplicationStatus(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->getDefaultApplicationStatus(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getDefaultDeviceType()Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDefaultDeviceType()Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageCode()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/Utils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLanguageCode: langCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMobileDataRegState(Landroid/telephony/ServiceState;)I
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getMobileDataRegState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, p0, v1}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public static getMultiSimState(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getMultiSimState(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMyDeviceType(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcNetworkType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->useMobileData:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getNetworkTypeForSlotId(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getNetworkTypeForSlotId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getPPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getPPVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneSimSlotCount(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getPresentSimCount(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPresentSimCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSAAccountId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSAAccountIdForQR(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getSAAccountIdForQR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSIMMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSIMMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSamsungUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getSamsungUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSimIcon(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getSimName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    if-ne p0, v0, :cond_0

    const-string p0, "select_name_1"

    goto :goto_0

    :cond_0
    const-string p0, "select_name_2"

    :goto_0
    invoke-static {p1, p0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimSelected()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSimSelected()I

    move-result v0

    return v0
.end method

.method public static getSimSelectedForJoining(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v0, 0x6a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getInt(Landroid/content/ContentResolver;II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    sget p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    return p0
.end method

.method public static getSingleSimState()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSingleSimState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotWithSimCard(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSlotWithSimCard(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getValidMsisdnForEng(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getValidMsisdnForEng(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasPermission(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/Utils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static insertEventLog(Landroid/content/Context;II)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/samsung/android/cmcsettings/utils/EventLogUtils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method

.method public static insertEventLog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/cmcsettings/utils/EventLogUtils;->insertEventLog(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static insertEventLogWithDetail(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/cmcsettings/utils/EventLogUtils;->insertEventLogWithDetail(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method public static insertEventLogWithValue(Landroid/content/Context;IIJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/cmcsettings/utils/EventLogUtils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    return-void
.end method

.method public static isCMCForegroundServiceRunning(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->getCMCForegroundServiceQueueLength(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDataRoaming(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result p0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/Utils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataRoaming: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/MultiSimUtil;->isNetworkRoaming(I)Z

    move-result p0

    return p0
.end method

.method public static isGDPRModel(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->gdprCountries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isKoreanModel(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "kor"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLGPDModel(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "bra"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNoSIM(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isSAinOOBEHistory(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isExistOobeHistory(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSaLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isSaLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSamsungAccountLogin(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSimCheckSkip(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isSimCheckSkip(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSimPresent(Landroid/content/Context;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isSimPresent(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isSingaporeModel(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "sgp"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTablet()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static notHasReadPhoneStatePermission(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->hasPermission(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static readSamsungAccountInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->readSamsungAccountInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public static setCallAppAsSamsungDefault(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->setCallAppAsSamsungDefault(Landroid/content/Context;)V

    return-void
.end method

.method public static setConfigurationForUseMobileData(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkType(Landroid/content/Context;I)V

    .line 5
    invoke-static {p0, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public static setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V

    return-void
.end method

.method public static setMessageAppAsSamsungDefault(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->setMessageAppAsSamsungDefault(Landroid/content/Context;)V

    return-void
.end method

.method public static setNetworkType(Landroid/content/Context;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->unknown:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    if-nez p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->useMobileData:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->wifiOnly:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    .line 4
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcNetworkType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;)V

    return-void
.end method

.method public static setNetworkTypeForSlotId(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    return-void
.end method

.method public static setSimSelectedForJoining(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v0, 0x6a

    invoke-static {p0, v0, p1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    return-void
.end method

.method public static startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static supportDesktopMode()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static writeSamsungAccountInfo(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->writeSamsungAccountInfo(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;)V

    return-void
.end method
