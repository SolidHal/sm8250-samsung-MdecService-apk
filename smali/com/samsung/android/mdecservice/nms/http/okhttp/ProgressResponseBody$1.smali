.class Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;
.super Lg/h;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->source(Lg/s;)Lg/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field length:J

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;

.field total:J

.field updated:J


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;Lg/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;

    invoke-direct {p0, p2}, Lg/h;-><init>(Lg/s;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->total:J

    .line 3
    iput-wide p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->updated:J

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->access$000(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;)Lf/c0;

    move-result-object p1

    invoke-virtual {p1}, Lf/c0;->contentLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->length:J

    return-void
.end method


# virtual methods
.method public read(Lg/c;J)J
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg/h;->read(Lg/c;J)J

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->total:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-eqz p3, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->total:J

    if-eqz p3, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->updated:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->length:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->access$100(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;)Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->access$100(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;)Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->total:J

    iget-wide v4, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->length:J

    if-nez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;->update(JJZ)V

    .line 6
    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->total:J

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;->updated:J

    :cond_4
    return-wide p1
.end method
