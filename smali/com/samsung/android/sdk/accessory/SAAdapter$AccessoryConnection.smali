.class Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;
.super Ljava/lang/Object;
.source "SAAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryConnection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    monitor-enter p1

    if-eqz p2, :cond_3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accessory service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$402(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$400(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$600(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v4

    const/16 v5, 0x9

    .line 7
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$700(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    move-result-object v6

    .line 8
    invoke-interface/range {v1 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to setup client Identity.Invalid response from Framework"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v1, "fwk_version"

    const/16 v2, 0x141

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setActiveFrameworkVersion(I)V

    .line 13
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    const-string v2, "clientId"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$802(Lcom/samsung/android/sdk/accessory/SAAdapter;J)J

    .line 14
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 15
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 16
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to setup client Identity.Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "errorcode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 18
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Client ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    const-string v1, "com.samsung.accessory.adapter.extra.PROCESS_ID"

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 21
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 22
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkVersion()I

    move-result v2

    const/16 v3, 0x4f

    if-lt v2, v3, :cond_2

    .line 23
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$400(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$902(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    .line 24
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running in SAP process, Updated my proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$900(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_2
    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkProcessId(I)V

    const-string v1, "com.samsung.accessory.adapter.extra.HEADER_LEN"

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxHeaderLength(I)V

    const-string v1, "com.samsung.accessory.adapter.extra.FOOTER_LEN"

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxFooterLength(I)V

    const-string v1, "com.samsung.accessory.adapter.extra.MSG_HEADER_LEN"

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxMsgHeaderLength(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    :try_start_6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to setup client Identity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 31
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1000(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V

    .line 32
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 33
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1100(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    .line 34
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accessory service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 4
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1200(Lcom/samsung/android/sdk/accessory/SAAdapter;Z)V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
