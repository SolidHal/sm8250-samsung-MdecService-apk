.class Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController$1;
.super Ljava/lang/Object;
.source "OkSseController.java"

# interfaces
.implements Lc/c/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lc/c/a/b;)V
    .locals 1

    const-string p1, "OkSseCntlr"

    const-string v0, "sse channel closed"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->access$102(Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;Lc/c/a/b;)Lc/c/a/b;

    return-void
.end method

.method public onComment(Lc/c/a/b;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onComment: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OkSseCntlr"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lc/c/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " event = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " message = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OkSseCntlr"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public onOpen(Lc/c/a/b;Lf/b0;)V
    .locals 0

    const-string p1, "OkSseCntlr"

    const-string p2, "onOpen"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreRetry(Lc/c/a/b;Lf/z;)Lf/z;
    .locals 0

    const-string p1, "OkSseCntlr"

    const-string p2, "onPreRetry is called"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRetryError(Lc/c/a/b;Ljava/lang/Throwable;Lf/b0;)Z
    .locals 3

    const/4 p2, 0x0

    const-string v0, "OkSseCntlr"

    if-nez p3, :cond_0

    const-string p1, "onRetryError is called"

    .line 1
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lf/b0;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Lf/b0;->s()I

    move-result p3

    const/16 v0, 0x12c

    if-lt p3, v0, :cond_1

    .line 4
    invoke-interface {p1}, Lc/c/a/b;->close()V

    return p2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onRetryTime(Lc/c/a/b;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
