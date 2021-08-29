.class Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "SubscriptionAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$DefaultState;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$300(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
