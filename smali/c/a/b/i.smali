.class public Lc/a/b/i;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lc/a/b/h;

.field private final d:Lc/a/b/b;

.field private final e:Lc/a/b/q;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lc/a/b/h;Lc/a/b/b;Lc/a/b/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/n<",
            "*>;>;",
            "Lc/a/b/h;",
            "Lc/a/b/b;",
            "Lc/a/b/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/a/b/i;->f:Z

    .line 3
    iput-object p1, p0, Lc/a/b/i;->b:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lc/a/b/i;->c:Lc/a/b/h;

    .line 5
    iput-object p3, p0, Lc/a/b/i;->d:Lc/a/b/b;

    .line 6
    iput-object p4, p0, Lc/a/b/i;->e:Lc/a/b/q;

    return-void
.end method

.method private a(Lc/a/b/n;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lc/a/b/n;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private b(Lc/a/b/n;Lc/a/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/n<",
            "*>;",
            "Lc/a/b/u;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lc/a/b/n;->parseNetworkError(Lc/a/b/u;)Lc/a/b/u;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lc/a/b/i;->e:Lc/a/b/q;

    invoke-interface {v0, p1, p2}, Lc/a/b/q;->a(Lc/a/b/n;Lc/a/b/u;)V

    return-void
.end method

.method private c()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lc/a/b/i;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/a/b/n;

    :try_start_0
    const-string v3, "network-queue-take"

    .line 3
    invoke-virtual {v2, v3}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Lc/a/b/n;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    .line 5
    invoke-virtual {v2, v3}, Lc/a/b/n;->finish(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lc/a/b/n;->notifyListenerResponseNotUsable()V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0, v2}, Lc/a/b/i;->a(Lc/a/b/n;)V

    .line 8
    iget-object v3, p0, Lc/a/b/i;->c:Lc/a/b/h;

    invoke-interface {v3, v2}, Lc/a/b/h;->a(Lc/a/b/n;)Lc/a/b/k;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 9
    invoke-virtual {v2, v4}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 10
    iget-boolean v4, v3, Lc/a/b/k;->e:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lc/a/b/n;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    .line 11
    invoke-virtual {v2, v3}, Lc/a/b/n;->finish(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lc/a/b/n;->notifyListenerResponseNotUsable()V

    return-void

    .line 13
    :cond_1
    invoke-virtual {v2, v3}, Lc/a/b/n;->parseNetworkResponse(Lc/a/b/k;)Lc/a/b/p;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 14
    invoke-virtual {v2, v4}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lc/a/b/n;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lc/a/b/p;->b:Lc/a/b/b$a;

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, p0, Lc/a/b/i;->d:Lc/a/b/b;

    invoke-virtual {v2}, Lc/a/b/n;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lc/a/b/p;->b:Lc/a/b/b$a;

    invoke-interface {v4, v5, v6}, Lc/a/b/b;->b(Ljava/lang/String;Lc/a/b/b$a;)V

    const-string v4, "network-cache-written"

    .line 17
    invoke-virtual {v2, v4}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-virtual {v2}, Lc/a/b/n;->markDelivered()V

    .line 19
    iget-object v4, p0, Lc/a/b/i;->e:Lc/a/b/q;

    invoke-interface {v4, v2, v3}, Lc/a/b/q;->b(Lc/a/b/n;Lc/a/b/p;)V

    .line 20
    invoke-virtual {v2, v3}, Lc/a/b/n;->notifyListenerResponseReceived(Lc/a/b/p;)V
    :try_end_0
    .catch Lc/a/b/u; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 21
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    invoke-static {v3, v5, v4}, Lc/a/b/v;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance v4, Lc/a/b/u;

    invoke-direct {v4, v3}, Lc/a/b/u;-><init>(Ljava/lang/Throwable;)V

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lc/a/b/u;->a(J)V

    .line 24
    iget-object v0, p0, Lc/a/b/i;->e:Lc/a/b/q;

    invoke-interface {v0, v2, v4}, Lc/a/b/q;->a(Lc/a/b/n;Lc/a/b/u;)V

    .line 25
    invoke-virtual {v2}, Lc/a/b/n;->notifyListenerResponseNotUsable()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lc/a/b/u;->a(J)V

    .line 27
    invoke-direct {p0, v2, v3}, Lc/a/b/i;->b(Lc/a/b/n;Lc/a/b/u;)V

    .line 28
    invoke-virtual {v2}, Lc/a/b/n;->notifyListenerResponseNotUsable()V

    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/a/b/i;->f:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lc/a/b/i;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-boolean v0, p0, Lc/a/b/i;->f:Z

    if-eqz v0, :cond_0

    return-void
.end method
