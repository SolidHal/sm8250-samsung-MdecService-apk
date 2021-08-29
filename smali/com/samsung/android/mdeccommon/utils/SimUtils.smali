.class public Lcom/samsung/android/mdeccommon/utils/SimUtils;
.super Ljava/lang/Object;
.source "SimUtils.java"


# static fields
.field private static final CSC_SUPPORT_ESIM:Z

.field private static final HW_SUPPORT_ESIM:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SIM_EMPTY:Ljava/lang/String; = "Empty"

.field public static SIM_SLOT_1:I = 0x0

.field public static SIM_SLOT_2:I = 0x0

.field public static final SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field public static final SIM_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final SIM_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final SWITCHING_SUPPORT_ESIM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    const/4 v1, 0x1

    .line 3
    sput v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_2:I

    .line 4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->CSC_SUPPORT_ESIM:Z

    .line 5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->HW_SUPPORT_ESIM:Z

    const-string v0, "persist.ril.esim.slotswitch"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tsds2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SWITCHING_SUPPORT_ESIM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataEnabledSIM(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPresentSimCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getDataEnabledSIM: getPresentSimCount is leass than 1: return -1"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "telephony_subscription_service"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 6
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getDataEnabledSIM: subInfo is null: return -1"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    .line 8
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static getKeyIDForNetworkTypeSlotId(I)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x6b

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/16 p0, 0x6c

    return p0

    .line 1
    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Wrong slot position"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getMultiSimState(I)Ljava/lang/String;
    .locals 4

    const-string v0, "gsm.sim.state"

    .line 1
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prop(gsm.sim.state) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ","

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-ltz p0, :cond_0

    .line 5
    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v1, v0, p0

    if-eqz v1, :cond_0

    .line 6
    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result propval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2

    move-object p0, v2

    :cond_2
    return-object p0
.end method

.method public static getNetworkTypeForSlotId(Landroid/content/Context;I)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getKeyIDForNetworkTypeSlotId(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getInt(Landroid/content/ContentResolver;II)I

    move-result p0

    return p0
.end method

.method public static getNumOfSimSlot(Landroid/content/Context;)I
    .locals 3

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfSimSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneNumber: sim_Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0f0123

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    if-nez p1, :cond_0

    const-string v2, "ril.ICC_TYPE0"

    .line 3
    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v2, "ril.ICC_TYPE1"

    .line 4
    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 5
    :goto_0
    sget-object v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumber: isSlotEmpty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 6
    invoke-static {p1, p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneNumber: mFormattedNumber "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPhoneSimSlotCount(Landroid/content/Context;)I
    .locals 3

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isMultisimModel()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getPresentSimCount(Landroid/content/Context;)I
    .locals 7

    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "phone"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 3
    sget v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    if-ne v1, p0, :cond_1

    move v4, v1

    .line 4
    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TM(single sim) : isSlotEmpty1("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, v4, 0x1

    return p0

    .line 5
    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_3

    .line 6
    sget v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    if-eqz p0, :cond_4

    .line 7
    sget v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_2:I

    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    goto :goto_2

    :cond_4
    move p0, v4

    :goto_2
    if-ne v1, v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    if-ne v1, p0, :cond_6

    move p0, v1

    goto :goto_4

    :cond_6
    move p0, v4

    .line 8
    :goto_4
    sget-object v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TM : isSlotEmpty1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isSlotEmpty2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    if-eqz p0, :cond_7

    return v4

    :cond_7
    if-nez v0, :cond_a

    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    const-string p0, "ril.ICC_TYPE0"

    const-string v0, "0"

    .line 9
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "ril.ICC_TYPE1"

    .line 10
    invoke-static {v2, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 11
    sget-object v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril : isSlotEmpty1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_a

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    return v3

    :cond_a
    :goto_5
    return v1
.end method

.method public static getSIMMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getSIMOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCC + MNC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v0

    .line 4
    :goto_1
    sget v3, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    if-ne p1, v3, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    move v3, v2

    .line 5
    :goto_2
    sget-object v4, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM 1 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SIM 2 ICON : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ret_sim_icon = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 7
    :try_start_2
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCscSupportEsim : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/mdeccommon/utils/SimUtils;->CSC_SUPPORT_ESIM:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", featureSupportEsimSwitch : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SWITCHING_SUPPORT_ESIM:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-boolean p1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->CSC_SUPPORT_ESIM:Z

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isSimEmbedded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SWITCHING_SUPPORT_ESIM:Z

    if-nez p1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030004

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    move-object v1, p0

    .line 10
    :cond_2
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 11
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    :cond_3
    throw p0

    :catch_2
    const p0, 0x7f080061

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    return p0
.end method

.method public static getSimSelected()I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getSimSlotIndex()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    return v0
.end method

.method public static getSingleSimState()Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotWithSimCard(Landroid/content/Context;)I
    .locals 4

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    sget v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    sget v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_2:I

    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-ne v2, p0, :cond_3

    move v0, v2

    :cond_3
    const-string p0, "ril.ICC_TYPE0"

    const-string v2, "0"

    .line 4
    invoke-static {p0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v3, "ril.ICC_TYPE1"

    .line 5
    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    .line 6
    sget p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_2:I

    return p0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    if-nez p0, :cond_5

    .line 7
    sget p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    return p0

    .line 8
    :cond_5
    sget p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    return p0
.end method

.method private static getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdeccommon/net/ITelephonyManager;->getMsisdnByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), msisdn("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isValidNumber(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "return empty string"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f0f0123

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidMsisdnForEng(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdeccommon/net/ITelephonyManager;->getMsisdnByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), msisdn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isValidNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSingleSimState()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getMultiSimState(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ABSENT"

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Empty"

    return-object p0

    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method

.method private static isMultisimModel()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SWITCHING_SUPPORT_ESIM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SWITCHING_SUPPORT_ESIM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", CSC_SUPPORT_ESIM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->CSC_SUPPORT_ESIM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", HW_SUPPORT_ESIM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->HW_SUPPORT_ESIM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SWITCHING_SUPPORT_ESIM:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->CSC_SUPPORT_ESIM:Z

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget-boolean v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->HW_SUPPORT_ESIM:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public static isNoSIM(Landroid/content/Context;)Z
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isSimCheckSkip(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "phone1_on"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "phone2_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const-string v4, "phone"

    .line 4
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_3

    .line 5
    sget v4, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    invoke-virtual {p0, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-eqz p0, :cond_4

    .line 6
    sget v5, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_2:I

    invoke-virtual {p0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    goto :goto_3

    :cond_4
    move p0, v1

    :goto_3
    const-string v5, "ril.ICC_TYPE0"

    const-string v6, "0"

    .line 7
    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ril.ICC_TYPE1"

    .line 8
    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    sget-object v8, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disable_offslot SIM1 Status("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") , SIM2 Status("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "), SIM1 icc_type("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "), SIM2 icc_type("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x5

    if-nez v0, :cond_5

    if-ne v4, v8, :cond_5

    .line 10
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "True 1: dismatch sim1 state and phone state, need check!"

    invoke-static {v0, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    :cond_5
    if-nez v2, :cond_6

    if-ne p0, v8, :cond_6

    .line 11
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "True 2: dismatch sim2 state and phone state, need check!"

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :cond_6
    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "False"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 14
    :cond_9
    :goto_4
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "True 3"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static isSimCheckSkip(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isUserBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v0, 0x6d

    invoke-static {p0, v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getInt(Landroid/content/ContentResolver;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method private static isSimEmbedded(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 5
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot idx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is embedded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v0
.end method

.method public static isSimPresent(Landroid/content/Context;I)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->isSimCheckSkip(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "phone1_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "phone2_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const-string v3, "phone"

    .line 4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    if-ne v1, p0, :cond_4

    move p0, v1

    goto :goto_3

    :cond_4
    move p0, v2

    :goto_3
    const-string v3, "0"

    if-nez p1, :cond_5

    const-string p1, "ril.ICC_TYPE0"

    .line 6
    invoke-static {p1, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_4

    :cond_5
    const-string p1, "ril.ICC_TYPE1"

    .line 7
    invoke-static {p1, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 8
    :goto_4
    sget-object v3, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimAbsent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSlotEmpty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " PhoneOnMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    return v1
.end method

.method private static isValidNumber(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[a-zA-Z]+"

    .line 1
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/SimUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->semIsNetworkSupported(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static setNetworkTypeForSlotId(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getKeyIDForNetworkTypeSlotId(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    return-void
.end method
