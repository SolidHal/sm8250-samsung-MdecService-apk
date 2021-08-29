.class public Lcom/samsung/android/sdk/accessory/SAService;
.super Landroid/app/Service;
.source "SAService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;,
        Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;
    }
.end annotation


# static fields
.field private static final REQUEST_TYPE_CONNECTION:I = 0x1

.field private static final REQUEST_TYPE_MESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAService"

.field private static isAboveO:Z = false

.field private static mRequestNum:Ljava/lang/Integer;


# instance fields
.field private mBinder:Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;-><init>(Lcom/samsung/android/sdk/accessory/SAService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAService;->mBinder:Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/accessory/SAService;ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAService;->onAgentCreated(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessory/SAService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAService;->finishService()V

    return-void
.end method

.method private finishService()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    monitor-enter v0

    :try_start_0
    const-string v1, "[SA_SDK]SAService"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished. Remained request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/accessory/SAService;->isAboveO:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleConnectionRequest(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "agentImplclass"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;-><init>(ILandroid/content/Intent;Lcom/samsung/android/sdk/accessory/SAService;)V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAService;->requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;)V

    return-void
.end method

.method private handleMessageReceived(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "agentImplclass"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;-><init>(ILandroid/content/Intent;Lcom/samsung/android/sdk/accessory/SAService;)V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAService;->requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;)V

    return-void
.end method

.method private onAgentCreated(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleConnectionRequest(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleMessageReceived()V

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAService;->finishService()V

    return-void
.end method

.method private requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    return-void
.end method

.method private startService()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/sdk/accessory/SAService;->isAboveO:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x3e7

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.gear"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.samsung.android.moden"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.samsung.android.samsungpay"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Other Notifications"

    goto :goto_1

    :cond_1
    const-string v1, "ACCESSORY_SDK_CHANNEL_ID"

    const-string v2, "notification"

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    if-nez v3, :cond_3

    .line 8
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    const-string v5, "ACCESSORY_SDK"

    invoke-direct {v3, v1, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 9
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "f.NOTIFCATION_DELAYS_CHANNEL_ID"

    .line 10
    :cond_3
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAService;->mBinder:Lcom/samsung/android/sdk/accessory/SAService$SASDKBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/samsung/android/sdk/accessory/SAService;->isAboveO:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 6
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAService;->startService()V

    const-string p3, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    sget-object p3, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    monitor-enter p3

    :try_start_0
    const-string p2, "[SA_SDK]SAService"

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received incoming connection indication : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAService;->handleConnectionRequest(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const-string p3, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    .line 9
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    monitor-enter p2

    :try_start_2
    const-string p3, "[SA_SDK]SAService"

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message received indication : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/accessory/SAService;->mRequestNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAService;->handleMessageReceived(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
