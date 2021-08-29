.class Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAAgentV2.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    return-void
.end method


# virtual methods
.method public onAgentRegistered()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "onFrameworkDisconnected: mBackgroundWorker is null!"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
