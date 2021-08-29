.class final Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
.super Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceConnectionIndicationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

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
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fetch service profile description failed !!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

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
.method public onServiceConnectionRequested(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "peerAgent"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 4
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    const-wide/16 v2, 0x0

    const-string v5, "transactionId"

    .line 7
    invoke-virtual {p1, v5, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v6, "agentId"

    .line 8
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "agentImplclass"

    .line 9
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 10
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Implementation class not available in intent. Ignoring request"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 12
    iget-object v10, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->isValidImplClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    return-void

    .line 13
    :cond_1
    const-class v10, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    .line 14
    iget-object v10, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v10}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v11}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 15
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 16
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_2

    if-lt v10, v12, :cond_2

    const/4 v4, 0x1

    .line 17
    :cond_2
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v10, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 19
    invoke-virtual {v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    invoke-virtual {v10, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v9, :cond_3

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/accessory/SAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz v4, :cond_4

    .line 24
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->isAppRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "App is restricted in background. Cannot start a service for connection request."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Check Accessory Service XML for serviceImpl attribute"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 30
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent Impl class not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void

    .line 31
    :cond_7
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to obtain parcel"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 32
    :cond_8
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "marshalled accessory byte[] is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
