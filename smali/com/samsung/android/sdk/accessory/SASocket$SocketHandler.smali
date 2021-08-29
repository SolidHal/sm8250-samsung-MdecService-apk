.class final Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
.super Landroid/os/Handler;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocketHandler"
.end annotation


# static fields
.field static final MESSAGE_CHANNEL_ERROR:I = 0x3

.field static final MESSAGE_CHANNEL_READ:I = 0x2

.field static final MESSAGE_SERVICE_CONNECTION_LOSS:I = 0x1

.field static final MESSAGE_SERVICE_CONNECTION_RESPONSE:I = 0x4


# instance fields
.field mSocket:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$600(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$700(Lcom/samsung/android/sdk/accessory/SASocket;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$800(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized quit()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
