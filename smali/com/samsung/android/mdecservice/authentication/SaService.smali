.class public Lcom/samsung/android/mdecservice/authentication/SaService;
.super Landroid/app/IntentService;
.source "SaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;
    }
.end annotation


# static fields
.field private static final FAILED_REASON_INTERNAL_SA_ERROR:I = 0x1

.field private static final FAILED_REASON_NEED_RE_AUTHENTICATION:I = 0x0

.field public static final KEY_EXPIRED_ACCESS_TOKEN:Ljava/lang/String; = "EXPIRED_ACCESS_TOKEN"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TIMEOUT_VALUE:I = 0x3a98


# instance fields
.field final ID_REQUEST_ACCESSTOKEN:I

.field mAppSecret:Ljava/lang/String;

.field private mExpiredAccessToken:Ljava/lang/String;

.field private mISaService:Lc/d/a/a/b;

.field private mRegistrationCode:Ljava/lang/String;

.field private mSACallback:Lc/d/a/a/a;

.field private mSAConnection:Landroid/content/ServiceConnection;

.field private mSaLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "SaService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mAppSecret:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSAConnection:Landroid/content/ServiceConnection;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mISaService:Lc/d/a/a/b;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSACallback:Lc/d/a/a/a;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mRegistrationCode:Ljava/lang/String;

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->ID_REQUEST_ACCESSTOKEN:I

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSaLock:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mExpiredAccessToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mISaService:Lc/d/a/a/b;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/mdecservice/authentication/SaService;Lc/d/a/a/b;)Lc/d/a/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mISaService:Lc/d/a/a/b;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSACallback:Lc/d/a/a/a;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/mdecservice/authentication/SaService;Lc/d/a/a/a;)Lc/d/a/a/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSACallback:Lc/d/a/a/a;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/authentication/SaService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mRegistrationCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/mdecservice/authentication/SaService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mRegistrationCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/authentication/SaService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/authentication/SaService;->getAccessTokenInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/authentication/SaService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/authentication/SaService;->disconnectToSamsungAccountService()V

    return-void
.end method

.method private declared-synchronized connectToSamsungAccountService()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connect to Samsung Account AIDL()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.msc.sa.service.RequestService"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v1, Lcom/samsung/android/mdecservice/authentication/SaService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/authentication/SaService$1;-><init>(Lcom/samsung/android/mdecservice/authentication/SaService;)V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSAConnection:Landroid/content/ServiceConnection;

    .line 6
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSAConnection:Landroid/content/ServiceConnection;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->bindServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disconnectToSamsungAccountService()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnectToSamsungAccountService"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mISaService:Lc/d/a/a/b;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc/d/a/a/b;->p(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mSaLcok notify"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSaLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getAccessTokenInternal()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Try to Get Access Token"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_id"

    const-string v2, "8f9l37bswj"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "client_secret"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mExpiredAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mExpiredAccessToken:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "expired_access_token"

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mExpiredAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "additional"

    .line 7
    sget-object v2, Lcom/samsung/android/mdeccommon/constants/MdecCommonConstants;->ADDITIONAL_SA_INFO:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mISaService:Lc/d/a/a/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mRegistrationCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mISaService:Lc/d/a/a/b;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lc/d/a/a/b;->r(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Request Access Token"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Request Access Token Failed : mISaService or mRegistrationCode Null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mExpiredAccessToken:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSaLock:Ljava/lang/Object;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->isSaLogined(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "not sa login"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "EXPIRED_ACCESS_TOKEN"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mExpiredAccessToken:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaService start : Expired Access Token("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mExpiredAccessToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/authentication/SaService;->connectToSamsungAccountService()V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSaLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSaLcok wait"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService;->mSaLock:Ljava/lang/Object;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 10
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
