.class Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;
.super Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;
.source "MessageAgentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onFailureResponse: httpResp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageAgentBase"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getCode()I

    move-result v2

    const-string v3, "MMS"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->logEvent(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 5

    const-string v0, "MessageAgentBase"

    if-nez p2, :cond_0

    const-string p1, "httpResponse is null! wrong flow."

    .line 1
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    .line 3
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->access$300(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSuccessResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 6
    :catch_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getCode()I

    move-result v3

    const-string v4, "MMS"

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->logEvent(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "response"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getCode()I

    move-result p1

    const-string p2, "code"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    const/16 p2, 0x3ec

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
