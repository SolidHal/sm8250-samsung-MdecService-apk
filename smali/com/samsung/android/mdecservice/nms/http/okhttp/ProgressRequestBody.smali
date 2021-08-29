.class public Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;
.super Lf/a0;
.source "ProgressRequestBody.java"


# static fields
.field private static final PROGRESS_MULTIPLIER:I = 0xa

.field private static final SEGMENT_SIZE:I = 0x2000


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final listener:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a0;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->file:Ljava/io/File;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->contentType:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->listener:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lf/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lg/d;)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->file:Ljava/io/File;

    invoke-static {v1}, Lg/l;->f(Ljava/io/File;)Lg/s;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->contentLength()J

    move-result-wide v7

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    .line 3
    :goto_1
    invoke-interface {p1}, Lg/d;->a()Lg/c;

    move-result-object v5

    const-wide/16 v9, 0x2000

    invoke-interface {v0, v5, v9, v10}, Lg/s;->read(Lg/c;J)J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_1

    add-long v9, v3, v5

    .line 4
    invoke-interface {p1}, Lg/d;->flush()V

    sub-long v3, v9, v1

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-lez v3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->listener:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    const/4 v6, 0x0

    move-wide v2, v9

    move-wide v4, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;->update(JJZ)V

    move-wide v1, v9

    goto :goto_0

    :cond_0
    move-wide v3, v9

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;->listener:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    const/4 v6, 0x1

    move-wide v2, v3

    move-wide v4, v7

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;->update(JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lf/f0/c;->f(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lf/f0/c;->f(Ljava/io/Closeable;)V

    .line 8
    throw p1
.end method
