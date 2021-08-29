.class public Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;
.super Landroid/app/IntentService;
.source "CheckFcmInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TIMEOUT_VALUE_FCM_REFRESH:I = 0x3a98

.field private static mFcmRefreshLock:Ljava/lang/Object;


# instance fields
.field private mFcmObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mFcmRefreshLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "CheckFcmInfo"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo$1;-><init>(Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mFcmObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mFcmRefreshLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start onHandleIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "receiver"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "resultReceiver is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "entitlement"

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "entitlement"

    .line 6
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->initializeFirebaseApp(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string v0, "entitlement"

    .line 7
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "entitlementFireBaseApp is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mReceiver:Landroid/os/ResultReceiver;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "instance id is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mReceiver:Landroid/os/ResultReceiver;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 13
    :cond_3
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "first try to get fcm token"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Fcms;->TABLE_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mFcmObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 16
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mFcmRefreshLock:Ljava/lang/Object;

    .line 17
    monitor-enter v4

    .line 18
    :try_start_0
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Enter FcmRefreshLock"

    invoke-static {v2, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mFcmRefreshLock:Ljava/lang/Object;

    const-wide/16 v7, 0x3a98

    invoke-virtual {v2, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 20
    :try_start_1
    sget-object v5, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "interrupted FcmRefreshLock"

    invoke-static {v5, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 22
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "second try to get fcm token"

    invoke-static {v2, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 25
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "entitlementPushToken id is null"

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 26
    :cond_4
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mFcmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 27
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 28
    :cond_5
    :goto_2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->setFcmPushToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->mReceiver:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_6

    const/4 v1, 0x2

    :cond_6
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 31
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "end onHandleIntent"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
