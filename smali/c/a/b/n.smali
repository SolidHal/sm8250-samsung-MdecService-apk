.class public abstract Lc/a/b/n;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/n$c;,
        Lc/a/b/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lc/a/b/n<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCacheEntry:Lc/a/b/b$a;

.field private mCanceled:Z

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:Lc/a/b/p$a;

.field private final mEventLog:Lc/a/b/v$a;

.field private final mLock:Ljava/lang/Object;

.field private final mMethod:I

.field private mRequestCompleteListener:Lc/a/b/n$b;

.field private mRequestQueue:Lc/a/b/o;

.field private mResponseDelivered:Z

.field private mRetryPolicy:Lc/a/b/r;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mShouldRetryServerErrors:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc/a/b/p$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-boolean v0, Lc/a/b/v$a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lc/a/b/v$a;

    invoke-direct {v0}, Lc/a/b/v$a;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lc/a/b/n;->mEventLog:Lc/a/b/v$a;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/a/b/n;->mShouldCache:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lc/a/b/n;->mCanceled:Z

    .line 7
    iput-boolean v0, p0, Lc/a/b/n;->mResponseDelivered:Z

    .line 8
    iput-boolean v0, p0, Lc/a/b/n;->mShouldRetryServerErrors:Z

    .line 9
    iput-object v1, p0, Lc/a/b/n;->mCacheEntry:Lc/a/b/b$a;

    .line 10
    iput p1, p0, Lc/a/b/n;->mMethod:I

    .line 11
    iput-object p2, p0, Lc/a/b/n;->mUrl:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lc/a/b/n;->mErrorListener:Lc/a/b/p$a;

    .line 13
    new-instance p1, Lc/a/b/e;

    invoke-direct {p1}, Lc/a/b/e;-><init>()V

    invoke-virtual {p0, p1}, Lc/a/b/n;->setRetryPolicy(Lc/a/b/r;)Lc/a/b/n;

    .line 14
    invoke-static {p2}, Lc/a/b/n;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/a/b/n;->mDefaultTrafficStatsTag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/a/b/p$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lc/a/b/n;-><init>(ILjava/lang/String;Lc/a/b/p$a;)V

    return-void
.end method

.method static synthetic access$000(Lc/a/b/n;)Lc/a/b/v$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/b/n;->mEventLog:Lc/a/b/v$a;

    return-object p0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lc/a/b/v$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/b/n;->mEventLog:Lc/a/b/v$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lc/a/b/v$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lc/a/b/n;->mCanceled:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lc/a/b/n;->mErrorListener:Lc/a/b/p$a;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compareTo(Lc/a/b/n;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/n<",
            "TT;>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lc/a/b/n;->getPriority()Lc/a/b/n$c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lc/a/b/n;->getPriority()Lc/a/b/n$c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lc/a/b/n;->mSequence:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lc/a/b/n;->mSequence:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/a/b/n;

    invoke-virtual {p0, p1}, Lc/a/b/n;->compareTo(Lc/a/b/n;)I

    move-result p1

    return p1
.end method

.method public deliverError(Lc/a/b/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/a/b/n;->mErrorListener:Lc/a/b/p$a;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lc/a/b/p$a;->onErrorResponse(Lc/a/b/u;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method finish(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mRequestQueue:Lc/a/b/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lc/a/b/o;->b(Lc/a/b/n;)V

    .line 3
    :cond_0
    sget-boolean v0, Lc/a/b/v$a;->c:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance v3, Lc/a/b/n$a;

    invoke-direct {v3, p0, p1, v0, v1}, Lc/a/b/n$a;-><init>(Lc/a/b/n;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lc/a/b/n;->mEventLog:Lc/a/b/v$a;

    invoke-virtual {v2, p1, v0, v1}, Lc/a/b/v$a;->a(Ljava/lang/String;J)V

    .line 9
    iget-object p1, p0, Lc/a/b/n;->mEventLog:Lc/a/b/v$a;

    invoke-virtual {p0}, Lc/a/b/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/b/v$a;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getBody()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/a/b/n;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/a/b/n;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/a/b/n;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/b/n;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lc/a/b/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mCacheEntry:Lc/a/b/b$a;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/b/n;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListener()Lc/a/b/p$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mErrorListener:Lc/a/b/p$a;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 1
    iget v0, p0, Lc/a/b/n;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/a/b/n;->getPostParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/a/b/n;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/a/b/n;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/a/b/n;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/a/b/n;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/a/b/n;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lc/a/b/n$c;
    .locals 1

    .line 1
    sget-object v0, Lc/a/b/n$c;->c:Lc/a/b/n$c;

    return-object v0
.end method

.method public getRetryPolicy()Lc/a/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mRetryPolicy:Lc/a/b/r;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mSequence:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mRetryPolicy:Lc/a/b/r;

    invoke-interface {v0}, Lc/a/b/r;->b()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .line 1
    iget v0, p0, Lc/a/b/n;->mDefaultTrafficStatsTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/a/b/n;->mResponseDelivered:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/a/b/n;->mCanceled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markDelivered()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lc/a/b/n;->mResponseDelivered:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyListenerResponseNotUsable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/a/b/n;->mRequestCompleteListener:Lc/a/b/n$b;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0}, Lc/a/b/n$b;->a(Lc/a/b/n;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyListenerResponseReceived(Lc/a/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/p<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/a/b/n;->mRequestCompleteListener:Lc/a/b/n$b;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0, p1}, Lc/a/b/n$b;->b(Lc/a/b/n;Lc/a/b/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected parseNetworkError(Lc/a/b/u;)Lc/a/b/u;
    .locals 0

    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lc/a/b/k;)Lc/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/k;",
            ")",
            "Lc/a/b/p<",
            "TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lc/a/b/b$a;)Lc/a/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/b$a;",
            ")",
            "Lc/a/b/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/b/n;->mCacheEntry:Lc/a/b/b$a;

    return-object p0
.end method

.method setNetworkRequestCompleteListener(Lc/a/b/n$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/n;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc/a/b/n;->mRequestCompleteListener:Lc/a/b/n$b;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRequestQueue(Lc/a/b/o;)Lc/a/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/o;",
            ")",
            "Lc/a/b/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/b/n;->mRequestQueue:Lc/a/b/o;

    return-object p0
.end method

.method public setRetryPolicy(Lc/a/b/r;)Lc/a/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/r;",
            ")",
            "Lc/a/b/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/b/n;->mRetryPolicy:Lc/a/b/r;

    return-object p0
.end method

.method public final setSequence(I)Lc/a/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/a/b/n<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/n;->mSequence:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lc/a/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/a/b/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lc/a/b/n;->mShouldCache:Z

    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lc/a/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/a/b/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lc/a/b/n;->mShouldRetryServerErrors:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lc/a/b/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/a/b/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/b/n;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/a/b/n;->mShouldCache:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/a/b/n;->mShouldRetryServerErrors:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/b/n;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lc/a/b/n;->mCanceled:Z

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/b/n;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lc/a/b/n;->getPriority()Lc/a/b/n$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/b/n;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
