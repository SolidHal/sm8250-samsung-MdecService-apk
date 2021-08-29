.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelAllCompleted([II)V
    .locals 8

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    const/16 p2, 0xd

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$600(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onCancelAllCompleted(I)V

    return-void

    .line 3
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget v4, p1, v2

    .line 5
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    .line 7
    iget v7, v7, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    if-ne v7, v4, :cond_1

    iget-object v7, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 9
    iget-object v7, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v7}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$600(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onCancelAllCompleted(I)V

    :cond_4
    return-void
.end method

.method public onProgressChanged(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    .line 3
    iget v2, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onProgressChanged(II)V

    :cond_1
    return-void
.end method

.method public onTransferCompleted(ILjava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "[SA_SDK]SAFileTransfer"

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    .line 3
    iget v5, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v0, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_temp_"

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 5
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    const-string v7, "temp file could not be deleted - "

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp file deleted successfully - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    iput-object v5, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 13
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    invoke-static {v0, v3, v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$1000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 14
    iput-object v5, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 p3, 0x2

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$300(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3, p2, p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onTransferCompleted(ILjava/lang/String;I)V

    .line 17
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$900()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 19
    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$902(I)I

    :cond_5
    return-void

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$500(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    if-ne p3, v0, :cond_7

    const-string p1, "Ignoring onTransferCompleted because setup in progress"

    .line 21
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$502(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)Z

    .line 23
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$900()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 24
    invoke-static {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$902(I)I

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$300(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onTransferCompleted(ILjava/lang/String;I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onTransferRequested(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
