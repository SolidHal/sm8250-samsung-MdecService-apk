.class Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;
.super Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
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
.field private m403FailureCount:I

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->m403FailureCount:I

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->access$200(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getCode()I

    move-result v2

    const-string v3, "SMS"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->logEvent(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN_INVALID_ACCESS_TOKEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->m403FailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->m403FailureCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "X-Android-Response-Source"

    .line 16
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    .line 17
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->access$100(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSuccessResponse with string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MessageAgentBase"

    .line 18
    invoke-static {v3, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->GET_RESP:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 22
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 23
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "headers"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 25
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v2, "SMS"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v2, p1, v3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->logEvent(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 30
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    const/16 p2, 0x3ea

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 33
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setResponse()V

    :cond_2
    return-void
.end method

.method public onSuccessResponse(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "X-Android-Response-Source"

    .line 1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->access$000(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSuccessResponse with json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MessageAgentBase"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->NMS_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->dumpLogger(Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "code"

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v3, "SMS"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v2, v3, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->logEvent(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
