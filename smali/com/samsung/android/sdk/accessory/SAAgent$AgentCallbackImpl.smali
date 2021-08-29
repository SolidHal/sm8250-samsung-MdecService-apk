.class Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAAgent.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    return-void
.end method


# virtual methods
.method public onAgentRegistered()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "onFrameworkDisconnected: mBackgroundWorker is null!"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
