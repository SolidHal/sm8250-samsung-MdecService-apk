.class public Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;
.super Ljava/lang/Object;
.source "PayloadProgressEvent.java"


# instance fields
.field private bytesTransferred:J

.field private contentLength:J

.field private done:Z

.field private msgContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJZLjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->bytesTransferred:J

    .line 8
    iput-wide p3, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->contentLength:J

    .line 9
    iput-boolean p5, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->done:Z

    .line 10
    iput-object p6, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->msgContext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->bytesTransferred:J

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->contentLength:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->done:Z

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->msgContext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->bytesTransferred:J

    return-wide v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->contentLength:J

    return-wide v0
.end method

.method public getMsgContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->msgContext:Ljava/lang/String;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->done:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayloadProgressEvent{bytesTransferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->bytesTransferred:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", done="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->done:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", msgContext=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->msgContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
