.class public Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field private static final CLIDIGITS_KEY:Ljava/lang/String; = "Clidigits"

.field private static final CLIDIGITS_PREFERENCES_NAME:Ljava/lang/String; = "clidigits.preferences_name"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PREPARE_EMERGENCY_CALL_EXIT_DIALER:Ljava/lang/String; = "exitDialer"

.field public static final PREPARE_EMERGENCY_CALL_SECOND_ONE_PRESSED:Ljava/lang/String; = "secondOnePressed"

.field public static final PREPARE_EMERGENCY_CALL_START_DIALER:Ljava/lang/String; = "startDialer"

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "mdec/Utils-TelephonyUtil"

.field private static volatile sTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 2
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTelephonyManager()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const-string v1, "mdec/Utils-TelephonyUtil"

    const-string v2, "checkTelephonyManager"

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getCallState()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->checkTelephonyManager()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public static getNetworkType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->checkTelephonyManager()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->checkTelephonyManager()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->checkTelephonyManager()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getSimState()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->checkTelephonyManager()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public static listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->checkTelephonyManager()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/TelephonyUtil;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
