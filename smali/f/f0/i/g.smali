.class public final Lf/f0/i/g;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/f0/i/g$h;,
        Lf/f0/i/g$j;,
        Lf/f0/i/g$g;,
        Lf/f0/i/g$i;
    }
.end annotation


# static fields
.field private static final v:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final b:Z

.field final c:Lf/f0/i/g$h;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lf/f0/i/i;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field final k:Lf/f0/i/l;

.field private l:Z

.field m:J

.field n:J

.field o:Lf/f0/i/m;

.field final p:Lf/f0/i/m;

.field q:Z

.field final r:Ljava/net/Socket;

.field final s:Lf/f0/i/j;

.field final t:Lf/f0/i/g$j;

.field final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lf/f0/i/g;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    .line 3
    invoke-static {v8, v1}, Lf/f0/c;->D(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lf/f0/i/g;->v:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lf/f0/i/g$g;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lf/f0/i/g;->d:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lf/f0/i/g;->m:J

    .line 4
    new-instance v2, Lf/f0/i/m;

    invoke-direct {v2}, Lf/f0/i/m;-><init>()V

    iput-object v2, v0, Lf/f0/i/g;->o:Lf/f0/i/m;

    .line 5
    new-instance v2, Lf/f0/i/m;

    invoke-direct {v2}, Lf/f0/i/m;-><init>()V

    iput-object v2, v0, Lf/f0/i/g;->p:Lf/f0/i/m;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lf/f0/i/g;->q:Z

    .line 7
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lf/f0/i/g;->u:Ljava/util/Set;

    .line 8
    iget-object v3, v1, Lf/f0/i/g$g;->f:Lf/f0/i/l;

    iput-object v3, v0, Lf/f0/i/g;->k:Lf/f0/i/l;

    .line 9
    iget-boolean v3, v1, Lf/f0/i/g$g;->g:Z

    iput-boolean v3, v0, Lf/f0/i/g;->b:Z

    .line 10
    iget-object v4, v1, Lf/f0/i/g$g;->e:Lf/f0/i/g$h;

    iput-object v4, v0, Lf/f0/i/g;->c:Lf/f0/i/g$h;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 11
    :goto_0
    iput v3, v0, Lf/f0/i/g;->g:I

    .line 12
    iget-boolean v6, v1, Lf/f0/i/g$g;->g:Z

    if-eqz v6, :cond_1

    add-int/2addr v3, v4

    .line 13
    iput v3, v0, Lf/f0/i/g;->g:I

    .line 14
    :cond_1
    iget-boolean v3, v1, Lf/f0/i/g$g;->g:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_2

    .line 15
    iget-object v3, v0, Lf/f0/i/g;->o:Lf/f0/i/m;

    const/high16 v6, 0x1000000

    invoke-virtual {v3, v4, v6}, Lf/f0/i/m;->i(II)Lf/f0/i/m;

    .line 16
    :cond_2
    iget-object v3, v1, Lf/f0/i/g$g;->b:Ljava/lang/String;

    iput-object v3, v0, Lf/f0/i/g;->e:Ljava/lang/String;

    .line 17
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v7, v3, v2

    const-string v7, "OkHttp %s Writer"

    .line 18
    invoke-static {v7, v3}, Lf/f0/c;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lf/f0/c;->D(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    invoke-direct {v6, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v6, v0, Lf/f0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    iget v3, v1, Lf/f0/i/g$g;->h:I

    if-eqz v3, :cond_3

    .line 20
    new-instance v7, Lf/f0/i/g$i;

    invoke-direct {v7, v0, v2, v2, v2}, Lf/f0/i/g$i;-><init>(Lf/f0/i/g;ZII)V

    iget v3, v1, Lf/f0/i/g$g;->h:I

    int-to-long v8, v3

    int-to-long v10, v3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 21
    :cond_3
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v16, 0x3c

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v19, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v7, v6, v2

    const-string v2, "OkHttp %s Push Observer"

    .line 22
    invoke-static {v2, v6}, Lf/f0/c;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lf/f0/c;->D(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v20

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lf/f0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    .line 23
    iget-object v2, v0, Lf/f0/i/g;->p:Lf/f0/i/m;

    const v3, 0xffff

    invoke-virtual {v2, v4, v3}, Lf/f0/i/m;->i(II)Lf/f0/i/m;

    .line 24
    iget-object v2, v0, Lf/f0/i/g;->p:Lf/f0/i/m;

    const/4 v3, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Lf/f0/i/m;->i(II)Lf/f0/i/m;

    .line 25
    iget-object v2, v0, Lf/f0/i/g;->p:Lf/f0/i/m;

    invoke-virtual {v2}, Lf/f0/i/m;->d()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lf/f0/i/g;->n:J

    .line 26
    iget-object v2, v1, Lf/f0/i/g$g;->a:Ljava/net/Socket;

    iput-object v2, v0, Lf/f0/i/g;->r:Ljava/net/Socket;

    .line 27
    new-instance v2, Lf/f0/i/j;

    iget-object v3, v1, Lf/f0/i/g$g;->d:Lg/d;

    iget-boolean v4, v0, Lf/f0/i/g;->b:Z

    invoke-direct {v2, v3, v4}, Lf/f0/i/j;-><init>(Lg/d;Z)V

    iput-object v2, v0, Lf/f0/i/g;->s:Lf/f0/i/j;

    .line 28
    new-instance v2, Lf/f0/i/g$j;

    new-instance v3, Lf/f0/i/h;

    iget-object v1, v1, Lf/f0/i/g$g;->c:Lg/e;

    iget-boolean v4, v0, Lf/f0/i/g;->b:Z

    invoke-direct {v3, v1, v4}, Lf/f0/i/h;-><init>(Lg/e;Z)V

    invoke-direct {v2, v0, v3}, Lf/f0/i/g$j;-><init>(Lf/f0/i/g;Lf/f0/i/h;)V

    iput-object v2, v0, Lf/f0/i/g;->t:Lf/f0/i/g$j;

    return-void
.end method

.method static synthetic K(Lf/f0/i/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/f0/i/g;->l:Z

    return p1
.end method

.method private N()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lf/f0/i/b;->d:Lf/f0/i/b;

    sget-object v1, Lf/f0/i/b;->d:Lf/f0/i/b;

    invoke-virtual {p0, v0, v1}, Lf/f0/i/g;->M(Lf/f0/i/b;Lf/f0/i/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private R(ILjava/util/List;Z)Lf/f0/i/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;Z)",
            "Lf/f0/i/i;"
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 1
    iget-object v7, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    monitor-enter v7

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget v0, p0, Lf/f0/i/g;->g:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    .line 4
    sget-object v0, Lf/f0/i/b;->g:Lf/f0/i/b;

    invoke-virtual {p0, v0}, Lf/f0/i/g;->Z(Lf/f0/i/b;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lf/f0/i/g;->h:Z

    if-nez v0, :cond_7

    .line 6
    iget v8, p0, Lf/f0/i/g;->g:I

    .line 7
    iget v0, p0, Lf/f0/i/g;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf/f0/i/g;->g:I

    .line 8
    new-instance v9, Lf/f0/i/i;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lf/f0/i/i;-><init>(ILf/f0/i/g;ZZLjava/util/List;)V

    if-eqz p3, :cond_2

    .line 9
    iget-wide v0, p0, Lf/f0/i/g;->n:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    iget-wide v0, v9, Lf/f0/i/i;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 10
    :goto_1
    invoke-virtual {v9}, Lf/f0/i/i;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 13
    :try_start_2
    iget-object v0, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {v0, v6, v8, p1, p2}, Lf/f0/i/j;->T(ZIILjava/util/List;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-boolean v0, p0, Lf/f0/i/g;->b:Z

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {v0, p1, v8, p2}, Lf/f0/i/j;->Q(IILjava/util/List;)V

    .line 16
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_5

    .line 17
    iget-object p1, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {p1}, Lf/f0/i/j;->flush()V

    :cond_5
    return-object v9

    .line 18
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :cond_7
    :try_start_4
    new-instance p1, Lf/f0/i/a;

    invoke-direct {p1}, Lf/f0/i/a;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 21
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method static synthetic f(Lf/f0/i/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/f0/i/g;->N()V

    return-void
.end method

.method static synthetic m()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lf/f0/i/g;->v:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic s(Lf/f0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/f0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method L(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/f0/i/g;->n:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf/f0/i/g;->n:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method M(Lf/f0/i/b;Lf/f0/i/b;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lf/f0/i/g;->Z(Lf/f0/i/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lf/f0/i/i;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/f0/i/i;

    .line 5
    iget-object v1, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 8
    :try_start_2
    invoke-virtual {v3, p2}, Lf/f0/i/i;->d(Lf/f0/i/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-eqz p1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :try_start_3
    iget-object p2, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {p2}, Lf/f0/i/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    if-nez p1, :cond_3

    move-object p1, p2

    .line 10
    :cond_3
    :goto_3
    :try_start_4
    iget-object p2, p0, Lf/f0/i/g;->r:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 11
    :goto_4
    iget-object p2, p0, Lf/f0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 12
    iget-object p2, p0, Lf/f0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method declared-synchronized O(I)Lf/f0/i/i;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/f0/i/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized P()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf/f0/i/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Q()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g;->p:Lf/f0/i/m;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lf/f0/i/m;->e(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public S(Ljava/util/List;Z)Lf/f0/i/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;Z)",
            "Lf/f0/i/i;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lf/f0/i/g;->R(ILjava/util/List;Z)Lf/f0/i/i;

    move-result-object p1

    return-object p1
.end method

.method T(ILg/e;IZ)V
    .locals 9

    .line 1
    new-instance v5, Lg/c;

    invoke-direct {v5}, Lg/c;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Lg/e;->A(J)V

    .line 3
    invoke-interface {p2, v5, v0, v1}, Lg/s;->read(Lg/c;J)J

    .line 4
    invoke-virtual {v5}, Lg/c;->W()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lf/f0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lf/f0/i/g$e;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lf/f0/i/g$e;-><init>(Lf/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILg/c;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lg/c;->W()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method U(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lf/f0/i/g$d;

    const-string v3, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lf/f0/i/g$d;-><init>(Lf/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method V(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lf/f0/i/b;->d:Lf/f0/i/b;

    invoke-virtual {p0, p1, p2}, Lf/f0/i/g;->f0(ILf/f0/i/b;)V

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lf/f0/i/g;->u:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v0, p0, Lf/f0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lf/f0/i/g$c;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lf/f0/i/g$c;-><init>(Lf/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method W(ILf/f0/i/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/f0/i/g;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lf/f0/i/g$f;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lf/f0/i/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lf/f0/i/g$f;-><init>(Lf/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILf/f0/i/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method X(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized Y(I)Lf/f0/i/i;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/f0/i/i;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Z(Lf/f0/i/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lf/f0/i/g;->h:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lf/f0/i/g;->h:Z

    .line 6
    iget v1, p0, Lf/f0/i/g;->f:I

    .line 7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iget-object v2, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    sget-object v3, Lf/f0/c;->a:[B

    invoke-virtual {v2, v1, p1, v3}, Lf/f0/i/j;->M(ILf/f0/i/b;[B)V

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public a0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lf/f0/i/g;->b0(Z)V

    return-void
.end method

.method b0(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {p1}, Lf/f0/i/j;->m()V

    .line 2
    iget-object p1, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    iget-object v0, p0, Lf/f0/i/g;->o:Lf/f0/i/m;

    invoke-virtual {p1, v0}, Lf/f0/i/j;->S(Lf/f0/i/m;)V

    .line 3
    iget-object p1, p0, Lf/f0/i/g;->o:Lf/f0/i/m;

    invoke-virtual {p1}, Lf/f0/i/m;->d()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lf/f0/i/j;->U(IJ)V

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lf/f0/i/g;->t:Lf/f0/i/g$j;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c0(IZLg/c;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1
    iget-object p4, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {p4, p2, p1, p3, v3}, Lf/f0/i/j;->s(ZILg/c;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lf/f0/i/g;->n:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 4
    iget-object v2, p0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    iget-wide v4, p0, Lf/f0/i/g;->n:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 8
    iget-object v4, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {v4}, Lf/f0/i/j;->O()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    iget-wide v4, p0, Lf/f0/i/g;->n:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lf/f0/i/g;->n:J

    .line 10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 11
    iget-object v4, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lf/f0/i/j;->s(ZILg/c;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 12
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 13
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lf/f0/i/b;->c:Lf/f0/i/b;

    sget-object v1, Lf/f0/i/b;->h:Lf/f0/i/b;

    invoke-virtual {p0, v0, v1}, Lf/f0/i/g;->M(Lf/f0/i/b;Lf/f0/i/b;)V

    return-void
.end method

.method d0(ZII)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lf/f0/i/g;->l:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lf/f0/i/g;->l:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lf/f0/i/g;->N()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :cond_0
    :try_start_2
    iget-object v0, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {v0, p1, p2, p3}, Lf/f0/i/j;->P(ZII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-direct {p0}, Lf/f0/i/g;->N()V

    :goto_0
    return-void
.end method

.method e0(ILf/f0/i/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {v0, p1, p2}, Lf/f0/i/j;->R(ILf/f0/i/b;)V

    return-void
.end method

.method f0(ILf/f0/i/b;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lf/f0/i/g$a;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lf/f0/i/g$a;-><init>(Lf/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILf/f0/i/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/i/g;->s:Lf/f0/i/j;

    invoke-virtual {v0}, Lf/f0/i/j;->flush()V

    return-void
.end method

.method g0(IJ)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lf/f0/i/g$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lf/f0/i/g$b;-><init>(Lf/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 3
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
