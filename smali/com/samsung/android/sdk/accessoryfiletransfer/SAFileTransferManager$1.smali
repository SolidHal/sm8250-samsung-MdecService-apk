.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;
.super Ljava/lang/Object;
.source "SAFileTransferManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    if-eqz p2, :cond_1

    const-string p1, "[SA_SDK]SAFileTransferManager"

    const-string v0, "inside onServiceConnected mFTServiceConn"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;)V

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$002(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    .line 4
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FileUpdateReceiverThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 6
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;-><init>(Landroid/os/Looper;)V

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$202(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    .line 8
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$300()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object p1

    monitor-enter p1

    const/4 p2, 0x1

    .line 9
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$402(Z)Z

    .line 10
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$300()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    const-string p2, "[SA_SDK]SAFileTransferManager"

    const-string v0, "onServiceConnected: File Transfer service connected"

    .line 11
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    const-string p1, "[SA_SDK]SAFileTransferManager"

    const-string p2, "onServiceConnected: File Transfer service not created"

    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 7

    const-string p1, "[SA_SDK]SAFileTransferManager"

    const-string v0, "onServiceDisconnected: File Transfer service disconnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$300()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$300()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$300()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$002(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    .line 5
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$302(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$402(Z)Z

    .line 7
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$202(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    .line 10
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getLocalCallback()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    move-result-object v4

    iget v5, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    iget-object v3, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    const/16 v6, 0x800

    invoke-interface {v4, v5, v3, v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_5
    return-void
.end method
