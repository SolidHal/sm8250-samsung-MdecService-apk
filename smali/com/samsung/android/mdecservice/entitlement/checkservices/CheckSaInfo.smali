.class public Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;
.super Landroid/app/IntentService;
.source "CheckSaInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TIMEOUT_VALUE_SA_REFRESH:I = 0x3a98

.field private static mSaLock:Ljava/lang/Object;


# instance fields
.field private mReceiver:Landroid/os/ResultReceiver;

.field private mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CheckSaInfo"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo$1;-><init>(Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mSaLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start onHandleIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "receiver"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "resultReceiver is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->isSaLogined(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->setSaBroadcastListner(Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lb/l/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 12
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mSaLock:Ljava/lang/Object;

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Enter EntitlementStateLock"

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mSaLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 18
    :try_start_1
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v5, "interrupted EntitlementStateLock"

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 20
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "guid is empty"

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move p1, v1

    .line 24
    :goto_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/l/a/a;->e(Landroid/content/BroadcastReceiver;)V

    goto :goto_3

    .line 25
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    move p1, v1

    .line 26
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mReceiver:Landroid/os/ResultReceiver;

    xor-int/2addr p1, v1

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_5

    .line 27
    :cond_3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "not sa login"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    .line 29
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "saInfoCursor is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mReceiver:Landroid/os/ResultReceiver;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 31
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-lez v2, :cond_5

    .line 33
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 34
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->mReceiver:Landroid/os/ResultReceiver;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 36
    :goto_5
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "end onHandleIntent"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
