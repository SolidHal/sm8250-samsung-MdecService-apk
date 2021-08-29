.class Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;
.source "SAAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentAuthenticated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Received Authentication response"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onPeerAgentAuthenticated: mBackgroundWorker is null!"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
