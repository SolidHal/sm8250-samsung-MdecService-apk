.class public Lc/a/b/c;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/c$b;
    }
.end annotation


# static fields
.field private static final h:Z


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

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lc/a/b/b;

.field private final e:Lc/a/b/q;

.field private volatile f:Z

.field private final g:Lc/a/b/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lc/a/b/v;->b:Z

    sput-boolean v0, Lc/a/b/c;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lc/a/b/b;Lc/a/b/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/n<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/n<",
            "*>;>;",
            "Lc/a/b/b;",
            "Lc/a/b/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/a/b/c;->f:Z

    .line 3
    iput-object p1, p0, Lc/a/b/c;->b:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lc/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    .line 5
    iput-object p3, p0, Lc/a/b/c;->d:Lc/a/b/b;

    .line 6
    iput-object p4, p0, Lc/a/b/c;->e:Lc/a/b/q;

    .line 7
    new-instance p1, Lc/a/b/c$b;

    invoke-direct {p1, p0}, Lc/a/b/c$b;-><init>(Lc/a/b/c;)V

    iput-object p1, p0, Lc/a/b/c;->g:Lc/a/b/c$b;

    return-void
.end method

.method static synthetic a(Lc/a/b/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lc/a/b/c;)Lc/a/b/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a/b/c;->e:Lc/a/b/q;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/a/b/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/b/n;

    const-string v1, "cache-queue-take"

    .line 2
    invoke-virtual {v0, v1}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lc/a/b/n;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cache-discard-canceled"

    .line 4
    invoke-virtual {v0, v1}, Lc/a/b/n;->finish(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lc/a/b/c;->d:Lc/a/b/b;

    invoke-virtual {v0}, Lc/a/b/n;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/a/b/b;->c(Ljava/lang/String;)Lc/a/b/b$a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "cache-miss"

    .line 6
    invoke-virtual {v0, v1}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lc/a/b/c;->g:Lc/a/b/c$b;

    invoke-static {v1, v0}, Lc/a/b/c$b;->c(Lc/a/b/c$b;Lc/a/b/n;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lc/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    invoke-virtual {v1}, Lc/a/b/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache-hit-expired"

    .line 10
    invoke-virtual {v0, v2}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lc/a/b/n;->setCacheEntry(Lc/a/b/b$a;)Lc/a/b/n;

    .line 12
    iget-object v1, p0, Lc/a/b/c;->g:Lc/a/b/c$b;

    invoke-static {v1, v0}, Lc/a/b/c$b;->c(Lc/a/b/c$b;Lc/a/b/n;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lc/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "cache-hit"

    .line 14
    invoke-virtual {v0, v2}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 15
    new-instance v2, Lc/a/b/k;

    iget-object v3, v1, Lc/a/b/b$a;->a:[B

    iget-object v4, v1, Lc/a/b/b$a;->g:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lc/a/b/k;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lc/a/b/n;->parseNetworkResponse(Lc/a/b/k;)Lc/a/b/p;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    .line 16
    invoke-virtual {v0, v3}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lc/a/b/b$a;->b()Z

    move-result v3

    if-nez v3, :cond_5

    .line 18
    iget-object v1, p0, Lc/a/b/c;->e:Lc/a/b/q;

    invoke-interface {v1, v0, v2}, Lc/a/b/q;->b(Lc/a/b/n;Lc/a/b/p;)V

    goto :goto_0

    :cond_5
    const-string v3, "cache-hit-refresh-needed"

    .line 19
    invoke-virtual {v0, v3}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v1}, Lc/a/b/n;->setCacheEntry(Lc/a/b/b$a;)Lc/a/b/n;

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v2, Lc/a/b/p;->d:Z

    .line 22
    iget-object v1, p0, Lc/a/b/c;->g:Lc/a/b/c$b;

    invoke-static {v1, v0}, Lc/a/b/c$b;->c(Lc/a/b/c$b;Lc/a/b/n;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 23
    iget-object v1, p0, Lc/a/b/c;->e:Lc/a/b/q;

    new-instance v3, Lc/a/b/c$a;

    invoke-direct {v3, p0, v0}, Lc/a/b/c$a;-><init>(Lc/a/b/c;Lc/a/b/n;)V

    invoke-interface {v1, v0, v2, v3}, Lc/a/b/q;->c(Lc/a/b/n;Lc/a/b/p;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 24
    :cond_6
    iget-object v1, p0, Lc/a/b/c;->e:Lc/a/b/q;

    invoke-interface {v1, v0, v2}, Lc/a/b/q;->b(Lc/a/b/n;Lc/a/b/p;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/a/b/c;->f:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    sget-boolean v0, Lc/a/b/c;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start new dispatcher"

    invoke-static {v1, v0}, Lc/a/b/v;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, p0, Lc/a/b/c;->d:Lc/a/b/b;

    invoke-interface {v0}, Lc/a/b/b;->a()V

    .line 4
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lc/a/b/c;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-boolean v0, p0, Lc/a/b/c;->f:Z

    if-eqz v0, :cond_1

    return-void
.end method
