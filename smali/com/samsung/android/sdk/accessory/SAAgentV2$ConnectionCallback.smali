.class Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;
.super Ljava/lang/Object;
.source "SAAgentV2.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void
.end method


# virtual methods
.method public onConnectionClosed(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    const/16 v1, 0x800

    if-ne p2, v1, :cond_0

    const-string v1, "Framework disconnected during connection process!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_2

    const/16 v2, 0x40a

    if-ne p2, v2, :cond_1

    const/16 p2, 0x409

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection attempt failed wih peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string p1, "onConnectionFailure: mBackgroundWorker is null!"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection success with peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1600(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
