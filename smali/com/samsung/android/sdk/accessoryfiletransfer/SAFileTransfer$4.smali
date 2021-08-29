.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->cancel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

.field final synthetic val$transactionId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->val$transactionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->val$transactionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[SA_SDK]SAFileTransfer"

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "cancelFile aborted because service connection or transaction already closed."

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    const/4 v3, -0x1

    if-nez v2, :cond_1

    .line 4
    iput v3, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel called before transaction id is genereated"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->val$transactionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_1
    iget v2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    if-ne v2, v3, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel called again before transaction id is genereated"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->val$transactionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v1

    iget v0, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->cancelFile(I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
