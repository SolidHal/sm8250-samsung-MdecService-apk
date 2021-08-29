.class public Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;
.super Lf/c0;
.source "ProgressResponseBody.java"


# static fields
.field private static final PROGRESS_MULTIPLIER:I = 0xa


# instance fields
.field private bufferedSource:Lg/e;

.field private final progressListener:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

.field private final responseBody:Lf/c0;


# direct methods
.method public constructor <init>(Lf/c0;Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/c0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->responseBody:Lf/c0;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->progressListener:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;)Lf/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->responseBody:Lf/c0;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;)Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->progressListener:Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;

    return-object p0
.end method

.method private source(Lg/s;)Lg/s;
    .locals 1

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody$1;-><init>(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;Lg/s;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->responseBody:Lf/c0;

    invoke-virtual {v0}, Lf/c0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lf/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->responseBody:Lf/c0;

    invoke-virtual {v0}, Lf/c0;->contentType()Lf/u;

    move-result-object v0

    return-object v0
.end method

.method public source()Lg/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->bufferedSource:Lg/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->responseBody:Lf/c0;

    invoke-virtual {v0}, Lf/c0;->source()Lg/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->source(Lg/s;)Lg/s;

    move-result-object v0

    invoke-static {v0}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->bufferedSource:Lg/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;->bufferedSource:Lg/e;

    return-object v0
.end method
