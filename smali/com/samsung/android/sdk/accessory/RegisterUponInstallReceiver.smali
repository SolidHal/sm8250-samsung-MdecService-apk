.class public final Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegisterUponInstallReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String; = "[SA_SDK]RegisterUponInstallReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received register intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :try_start_0
    new-instance p2, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    sget-object v0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK config initialization failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->prepare()Ljava/util/concurrent/Future;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;

    const-string v2, "RegistrationThread"

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;-><init>(Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;Ljava/lang/String;Ljava/util/concurrent/Future;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->start()V

    :cond_0
    return-void
.end method
