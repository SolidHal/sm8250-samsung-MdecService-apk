.class Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;
.super Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;
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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->access$600(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onProgress(JJZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v0, :cond_0

    const-string p1, "RcsAgentBase"

    const-string p2, "onProgress: mMsgRcsAttr is null"

    .line 2
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    if-eq v0, v1, :cond_1

    if-eqz p5, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 v1, 0x3ed

    new-instance v9, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;

    const-string v8, "download_payload"

    move-object v2, v9

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;-><init>(JJZLjava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onSuccessResponse(Ljava/io/BufferedInputStream;Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 3

    const-string v0, "RcsAgentBase"

    if-nez p2, :cond_0

    const-string p1, "httpResp is null! wrong flow."

    .line 18
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onSuccessResponse in OkHttpRequestCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent()V

    .line 21
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 v0, 0x3eb

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 4

    const-string v0, "RcsAgentBase"

    if-nez p2, :cond_0

    const-string p1, "httpResp is null! wrong flow."

    .line 1
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSuccessResponse in OkHttpRequestCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->dumpLogger(Ljava/lang/String;)V

    .line 7
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent(Lorg/json/JSONObject;)V

    .line 9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "response"

    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "code"

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getCode()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 v2, 0x3e9

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": JSON EXCEPTION!"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "data"

    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent()V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
