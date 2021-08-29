.class final Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;
.super Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceChannelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "errorcode"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onChannelError with no error code!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRead(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "channelId"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "fragmentIndex"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    long-to-int v0, v0

    .line 4
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 5
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 6
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
