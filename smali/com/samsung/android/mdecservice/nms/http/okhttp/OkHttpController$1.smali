.class Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;
.super Ljava/lang/Object;
.source "OkHttpController.java"

# interfaces
.implements Lf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->postOkHttpRequestToServer(Lf/z;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

.field final synthetic val$callback:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

.field final synthetic val$isPayloadGetRequest:Z

.field final synthetic val$reqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;Ljava/lang/String;ZLcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$isPayloadGetRequest:Z

    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lf/e;Ljava/io/IOException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->access$000(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "][<--] Failure Response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Exception="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[NMS2]"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    .line 7
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->access$100(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/4 p2, -0x2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/4 p2, -0x1

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    return-void
.end method

.method public onResponse(Lf/e;Lf/b0;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lf/b0;->f()Lf/c0;

    move-result-object p1

    const-string v0, "OkHttpCntlr"

    if-nez p1, :cond_0

    const-string p1, "cached(Null) body is not handled!"

    .line 2
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "][<--] Code="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lf/b0;->s()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->access$000(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "][<--] Headers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Lf/b0;->N()Lf/r;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[NMS2]"

    .line 6
    invoke-virtual {p1, v5, v3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$isPayloadGetRequest:Z

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lf/b0;->s()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->access$000(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p2}, Lf/b0;->N()Lf/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v5, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][<--] Response = Payload Body Size = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Lf/b0;->f()Lf/c0;

    move-result-object v1

    invoke-virtual {v1}, Lf/c0;->contentLength()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lf/b0;->O()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 17
    invoke-virtual {p2}, Lf/b0;->f()Lf/c0;

    move-result-object v0

    invoke-virtual {v0}, Lf/c0;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 19
    invoke-virtual {p2}, Lf/b0;->s()I

    move-result v2

    invoke-virtual {p2}, Lf/b0;->N()Lf/r;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILf/r;)V

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->onSuccessResponse(Ljava/io/BufferedInputStream;Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p2}, Lf/b0;->f()Lf/c0;

    move-result-object p1

    invoke-virtual {p1}, Lf/c0;->string()Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][<--] Response="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 23
    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lf/b0;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 27
    invoke-virtual {p2}, Lf/b0;->s()I

    move-result v2

    invoke-virtual {p2}, Lf/b0;->N()Lf/r;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILf/r;)V

    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->onSuccessResponse(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lf/b0;->O()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "reason"

    const-string v0, ""

    .line 30
    invoke-virtual {p2, p1, v0}, Lf/b0;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    new-instance p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {p2}, Lf/b0;->s()I

    move-result v0

    .line 33
    invoke-virtual {p2}, Lf/b0;->s()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {p2}, Lf/b0;->s()I

    move-result v1

    .line 35
    invoke-virtual {p2}, Lf/b0;->s()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 36
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    :cond_4
    return-void
.end method
