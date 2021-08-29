.class Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;
.super Lcom/samsung/accessory/api/ISANetworkConnectionCallback$Stub;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISANetworkConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void
.end method


# virtual methods
.method public onNetworkConnectionResponse(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Received NetworkConnection response"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_2

    const/16 v2, 0x11

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v2, "networkType"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "errorcode"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 7
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 8
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onNetworkConnectionResponse : Resonse is not correct."

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onNetworkConnectionResponse: mBackgroundWorker is null!"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
