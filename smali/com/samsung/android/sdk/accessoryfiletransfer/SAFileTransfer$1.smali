.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

.field final synthetic val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$strURI:Ljava/lang/String;

.field final synthetic val$txId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$strURI:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$source:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$txId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, " "

    const-string v1, "[SA_SDK]SAFileTransfer"

    const/4 v2, -0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v5

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;

    move-result-object v6

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v8, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget-object v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v10, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$strURI:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$source:Ljava/lang/String;

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->sendFile(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received tx from FTCore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$txId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$txId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    if-eqz v4, :cond_0

    .line 4
    iget v5, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    if-ne v5, v2, :cond_0

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancel aready requested for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$txId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput v3, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 7
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$txId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->cancel(I)V

    .line 8
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 9
    iput v3, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 10
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$source:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$txId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$300(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;->val$source:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onTransferCompleted(ILjava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
