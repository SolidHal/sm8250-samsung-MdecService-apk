.class Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;
.super Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
.source "RcsAgentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->access$300(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onFailureResponse: httpResp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentBase"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent()V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN_INVALID_ACCESS_TOKEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->access$100(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onSuccessResponse with string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentBase"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "headers"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent()V

    .line 25
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 p2, 0x3ea

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessResponse(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "X-Android-Response-Source"

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v1

    const-string v2, "RcsAgentBase"

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " relay download case"

    .line 4
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    goto :goto_0

    :cond_0
    const-string v3, " nms response case"

    .line 6
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v3, Lcom/samsung/android/mdeccommon/log/Label;->NMS_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 8
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->dumpLogger(Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->access$000(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onSuccessResponse with json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent(Lorg/json/JSONObject;)V

    .line 11
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "code"

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessResponse([BLorg/json/JSONObject;)V
    .locals 2

    .line 26
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->access$200(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onSuccessResponse with binary data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgentBase"

    invoke-static {v1, p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent()V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 v0, 0x3eb

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
