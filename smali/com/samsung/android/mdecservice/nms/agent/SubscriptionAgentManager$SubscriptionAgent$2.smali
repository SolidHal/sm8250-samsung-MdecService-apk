.class Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;
.super Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
.source "SubscriptionAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->startSubscritpionUpdate()V
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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailureResponse: httpResp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SubMgr"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$1908(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubFailureCounter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onSuccessResponse(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-static {p2, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->parseJSON()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$4702(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->getSubID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$2502(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resourceURL "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$2500(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent$2;->this$1:Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method
