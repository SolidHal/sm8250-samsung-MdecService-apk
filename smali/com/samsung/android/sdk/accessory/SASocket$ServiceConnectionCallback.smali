.class final Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;
.super Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void
.end method


# virtual methods
.method public onConnectionLost(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "errorcode"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onConnectionLost with no error code!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onConnectionResponse(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "errorcode"

    const/16 v2, 0x500

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-string v1, "connectionId"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
