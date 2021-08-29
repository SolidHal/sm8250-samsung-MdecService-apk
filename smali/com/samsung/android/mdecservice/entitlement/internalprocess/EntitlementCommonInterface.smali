.class public Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;
.super Ljava/lang/Object;
.source "EntitlementCommonInterface.java"


# static fields
.field private static final AUTHENTICATION_RETRY_NUM:I = 0x3

.field public static final HTTPS_NOT_ACCEPTABLE:I = 0x196

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

.field private static mSaLock:Ljava/lang/Object;

.field private static mSaWaitFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaWaitFlag:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaWaitFlag:Z

    return p0
.end method

.method public static retryGetSaProcess(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    new-instance v1, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;-><init>()V

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaBroadcastListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->setSaBroadcastListner(Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;)V

    .line 4
    invoke-static {p0}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lb/l/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaLock:Ljava/lang/Object;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_3

    .line 6
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXPIRED_ACCESS_TOKEN"

    .line 7
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {p0, v3}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_0
    sput-boolean v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaWaitFlag:Z

    .line 11
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaLock:Ljava/lang/Object;

    const-wide/16 v5, 0x3a98

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 12
    sget-boolean v4, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->mSaWaitFlag:Z

    if-eqz v4, :cond_1

    .line 13
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->LOG_TAG:Ljava/lang/String;

    const-string v5, "sa timeout"

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v4}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 16
    invoke-virtual {v4}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 17
    :try_start_1
    monitor-exit v3

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 18
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 19
    :cond_2
    :goto_1
    monitor-exit v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    return v0
.end method

.method public static sendToResultReceiver(ILandroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 5

    if-nez p2, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->LOG_TAG:Ljava/lang/String;

    const-string p1, "receiver is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->LOG_TAG:Ljava/lang/String;

    const-string p1, "resultBundle is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    const-string v1, "errorCode"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getResponseResultString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), reasonCode("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
