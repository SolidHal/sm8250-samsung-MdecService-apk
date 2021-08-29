.class public Lc/a/b/o;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/o$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/b/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc/a/b/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc/a/b/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lc/a/b/b;

.field private final f:Lc/a/b/h;

.field private final g:Lc/a/b/q;

.field private final h:[Lc/a/b/i;

.field private i:Lc/a/b/c;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/b/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/b/b;Lc/a/b/h;)V
    .locals 1

    const/4 v0, 0x4

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lc/a/b/o;-><init>(Lc/a/b/b;Lc/a/b/h;I)V

    return-void
.end method

.method public constructor <init>(Lc/a/b/b;Lc/a/b/h;I)V
    .locals 3

    .line 11
    new-instance v0, Lc/a/b/f;

    new-instance v1, Landroid/os/Handler;

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lc/a/b/f;-><init>(Landroid/os/Handler;)V

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lc/a/b/o;-><init>(Lc/a/b/b;Lc/a/b/h;ILc/a/b/q;)V

    return-void
.end method

.method public constructor <init>(Lc/a/b/b;Lc/a/b/h;ILc/a/b/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc/a/b/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/a/b/o;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lc/a/b/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lc/a/b/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/b/o;->j:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lc/a/b/o;->e:Lc/a/b/b;

    .line 8
    iput-object p2, p0, Lc/a/b/o;->f:Lc/a/b/h;

    .line 9
    new-array p1, p3, [Lc/a/b/i;

    iput-object p1, p0, Lc/a/b/o;->h:[Lc/a/b/i;

    .line 10
    iput-object p4, p0, Lc/a/b/o;->g:Lc/a/b/q;

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/n;)Lc/a/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b/n<",
            "TT;>;)",
            "Lc/a/b/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lc/a/b/n;->setRequestQueue(Lc/a/b/o;)Lc/a/b/n;

    .line 2
    iget-object v0, p0, Lc/a/b/o;->b:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/a/b/o;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lc/a/b/o;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/a/b/n;->setSequence(I)Lc/a/b/n;

    const-string v0, "add-to-queue"

    .line 6
    invoke-virtual {p1, v0}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lc/a/b/n;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lc/a/b/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lc/a/b/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(Lc/a/b/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/b/o;->b:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/a/b/o;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v1, p0, Lc/a/b/o;->j:Ljava/util/List;

    monitor-enter v1

    .line 5
    :try_start_1
    iget-object v0, p0, Lc/a/b/o;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/a/b/o$a;

    .line 6
    invoke-interface {v2, p1}, Lc/a/b/o$a;->a(Lc/a/b/n;)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/a/b/o;->e()V

    .line 2
    new-instance v0, Lc/a/b/c;

    iget-object v1, p0, Lc/a/b/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lc/a/b/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lc/a/b/o;->e:Lc/a/b/b;

    iget-object v4, p0, Lc/a/b/o;->g:Lc/a/b/q;

    invoke-direct {v0, v1, v2, v3, v4}, Lc/a/b/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lc/a/b/b;Lc/a/b/q;)V

    iput-object v0, p0, Lc/a/b/o;->i:Lc/a/b/c;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lc/a/b/o;->h:[Lc/a/b/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 5
    new-instance v1, Lc/a/b/i;

    iget-object v2, p0, Lc/a/b/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lc/a/b/o;->f:Lc/a/b/h;

    iget-object v4, p0, Lc/a/b/o;->e:Lc/a/b/b;

    iget-object v5, p0, Lc/a/b/o;->g:Lc/a/b/q;

    invoke-direct {v1, v2, v3, v4, v5}, Lc/a/b/i;-><init>(Ljava/util/concurrent/BlockingQueue;Lc/a/b/h;Lc/a/b/b;Lc/a/b/q;)V

    .line 6
    iget-object v2, p0, Lc/a/b/o;->h:[Lc/a/b/i;

    aput-object v1, v2, v0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/a/b/o;->i:Lc/a/b/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/a/b/c;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/b/o;->h:[Lc/a/b/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lc/a/b/i;->d()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
