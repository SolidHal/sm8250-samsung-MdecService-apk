.class Lcom/samsung/android/sdk/accessory/SASocket$1;
.super Ljava/lang/Object;
.source "SASocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SASocket;->initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;

.field final synthetic val$localAgentId:Ljava/lang/String;

.field final synthetic val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$localAgentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->isFeatureEnabled(I)Z

    move-result v0

    const-string v1, "Connection request failed for peer:"

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Reason: PeerAgent does not support Socket communication"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const/16 v2, 0x401

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$200(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$500(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$localAgentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    new-instance v4, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    new-instance v5, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;

    iget-object v7, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {v5, v7, v6}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->requestServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to initiate connection!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection request enqued successfully for peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Reason:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Cleaning up now"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$200(Lcom/samsung/android/sdk/accessory/SASocket;)V

    :goto_1
    return-void
.end method
