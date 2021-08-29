.class Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;
.super Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
.source "SubscriptionAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->endSubscription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailureResponse: httpResp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$5000(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$5100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)V

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$4108(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnsubFailureCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$4100(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const-string v0, "Regard error as deregistered"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    :goto_1
    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubMgr"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$4800(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$4900(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$3;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method
