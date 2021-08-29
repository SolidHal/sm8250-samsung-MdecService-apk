.class Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;
.super Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
.source "CallLogAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$3100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onFailureResponse: httpResp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgent"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN_INVALID_ACCESS_TOKEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 5
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 6
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$3000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onSuccessResponse with string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallLogAgent"

    .line 7
    invoke-static {v1, p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    const/16 v0, 0x3ea

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessResponse(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onSuccessResponse with json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallLogAgent"

    .line 3
    invoke-static {v1, p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    const/16 v0, 0x3e9

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
