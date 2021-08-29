.class Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;
.source "SAManagerAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAManagerAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Lcom/samsung/android/sdk/accessory/SAManagerAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentUpdated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPeerAgentsFound(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "[SA_SDK]SAManagerAgent"

    const-string v1, "FindPeer response received."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    const-class v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "errorcode"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Peer Not Found:Error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 7
    iput v3, v0, Landroid/os/Message;->what:I

    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v1, "peerAgents"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Find Peer - invalid response from Accessory Framework"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Peer agent(s) found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 14
    iput v3, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 15
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
