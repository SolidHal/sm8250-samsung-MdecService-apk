.class public Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;
.super Landroid/app/Service;
.source "CMCUIBackgroundService.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

.field private mCMCOOBEObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mMessageAppChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$1;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$2;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$3;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_oobe"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mContext:Landroid/content/Context;

    const-string v0, "first_time_roaming_change"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

    const-string v2, "roaming_handled"

    .line 11
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 13
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 16
    new-instance v1, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService$4;-><init>(Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;)V

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mDataRoamingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method
