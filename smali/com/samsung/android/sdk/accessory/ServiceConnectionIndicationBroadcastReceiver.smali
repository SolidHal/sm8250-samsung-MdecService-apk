.class public final Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceConnectionIndicationBroadcastReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "[SA_SDK]ServiceConnectionIndicationReceiver"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private isAppRestricted(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized isValidImplClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceImpl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "fetch service profile description failed !!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "config  util default instance  creation failed !!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Incoming service connection request received."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v0, "agentImplclass"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Impl class not availabel in intent. Ignoring request"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection request will be handled by :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->isValidImplClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 10
    :cond_1
    const-class v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 12
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_2

    if-lt v2, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 14
    const-class v1, Lcom/samsung/android/sdk/accessory/SAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_6

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->isAppRestricted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "App is restricted in background. Cannot start a service for connection request."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Agent "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found. Check Accessory Service XML for serviceImpl attribute"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 22
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Agent Impl class not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception p1

    .line 23
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/ServiceConnectionIndicationBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK config init failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method
