.class Lf/f0/i/g$j;
.super Lf/f0/b;
.source "Http2Connection.java"

# interfaces
.implements Lf/f0/i/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final c:Lf/f0/i/h;

.field final synthetic d:Lf/f0/i/g;


# direct methods
.method constructor <init>(Lf/f0/i/g;Lf/f0/i/h;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lf/f0/i/g;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lf/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lf/f0/i/g$j;->c:Lf/f0/i/h;

    return-void
.end method

.method private l(Lf/f0/i/m;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-static {v0}, Lf/f0/i/g;->s(Lf/f0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lf/f0/i/g$j$c;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v5, v5, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lf/f0/i/g$j$c;-><init>(Lf/f0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Lf/f0/i/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(ZLf/f0/i/m;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v1, v1, Lf/f0/i/g;->p:Lf/f0/i/m;

    invoke-virtual {v1}, Lf/f0/i/m;->d()I

    move-result v1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object p1, p1, Lf/f0/i/g;->p:Lf/f0/i/m;

    invoke-virtual {p1}, Lf/f0/i/m;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object p1, p1, Lf/f0/i/g;->p:Lf/f0/i/m;

    invoke-virtual {p1, p2}, Lf/f0/i/m;->h(Lf/f0/i/m;)V

    .line 5
    invoke-direct {p0, p2}, Lf/f0/i/g$j;->l(Lf/f0/i/m;)V

    .line 6
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object p1, p1, Lf/f0/i/g;->p:Lf/f0/i/m;

    invoke-virtual {p1}, Lf/f0/i/m;->d()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 7
    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-boolean v1, v1, Lf/f0/i/g;->q:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v1, p1, p2}, Lf/f0/i/g;->L(J)V

    .line 9
    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iput-boolean v4, v1, Lf/f0/i/g;->q:Z

    .line 10
    :cond_1
    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v1, v1, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v1, v1, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v5, v5, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lf/f0/i/i;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lf/f0/i/i;

    goto :goto_0

    :cond_2
    move-wide p1, v2

    .line 12
    :cond_3
    :goto_0
    invoke-static {}, Lf/f0/i/g;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v6, Lf/f0/i/g$j$b;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v8, v8, Lf/f0/i/g;->e:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Lf/f0/i/g$j$b;-><init>(Lf/f0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 14
    array-length v0, v5

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v1, v5, v9

    .line 15
    monitor-enter v1

    .line 16
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lf/f0/i/i;->a(J)V

    .line 17
    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c(ZILg/e;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p2}, Lf/f0/i/g;->X(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Lf/f0/i/g;->T(ILg/e;IZ)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p2}, Lf/f0/i/g;->O(I)Lf/f0/i/i;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    sget-object v0, Lf/f0/i/b;->d:Lf/f0/i/b;

    invoke-virtual {p1, p2, v0}, Lf/f0/i/g;->f0(ILf/f0/i/b;)V

    int-to-long p1, p4

    .line 5
    invoke-interface {p3, p1, p2}, Lg/e;->h(J)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0, p3, p4}, Lf/f0/i/i;->m(Lg/e;I)V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lf/f0/i/i;->n()V

    :cond_2
    return-void
.end method

.method public d(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lf/f0/i/g;->K(Lf/f0/i/g;Z)Z

    .line 3
    iget-object p2, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5
    :cond_0
    :try_start_1
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-static {p1}, Lf/f0/i/g;->s(Lf/f0/i/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lf/f0/i/g$i;

    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Lf/f0/i/g$i;-><init>(Lf/f0/i/g;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public e(IIIZ)V
    .locals 0

    return-void
.end method

.method public f(ILf/f0/i/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p1}, Lf/f0/i/g;->X(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p1, p2}, Lf/f0/i/g;->W(ILf/f0/i/b;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p1}, Lf/f0/i/g;->Y(I)Lf/f0/i/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lf/f0/i/i;->p(Lf/f0/i/b;)V

    :cond_1
    return-void
.end method

.method public g(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {p3, p2}, Lf/f0/i/g;->X(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {p3, p2, p4, p1}, Lf/f0/i/g;->U(ILjava/util/List;Z)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    monitor-enter p3

    .line 4
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p2}, Lf/f0/i/g;->O(I)Lf/f0/i/i;

    move-result-object v0

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-boolean v0, v0, Lf/f0/i/g;->h:Z

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget v0, v0, Lf/f0/i/g;->f:I

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    .line 7
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget v1, v1, Lf/f0/i/g;->g:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    .line 8
    :cond_3
    new-instance v0, Lf/f0/i/i;

    iget-object v5, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    const/4 v6, 0x0

    move-object v3, v0

    move v4, p2

    move v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lf/f0/i/i;-><init>(ILf/f0/i/g;ZZLjava/util/List;)V

    .line 9
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iput p2, p1, Lf/f0/i/g;->f:I

    .line 10
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object p1, p1, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lf/f0/i/g;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p4, Lf/f0/i/g$j$a;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v4, v4, Lf/f0/i/g;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {p4, p0, v1, v2, v0}, Lf/f0/i/g$j$a;-><init>(Lf/f0/i/g$j;Ljava/lang/String;[Ljava/lang/Object;Lf/f0/i/i;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 12
    monitor-exit p3

    return-void

    .line 13
    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0, p4}, Lf/f0/i/i;->o(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {v0}, Lf/f0/i/i;->n()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-wide v1, p1, Lf/f0/i/g;->n:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lf/f0/i/g;->n:J

    .line 3
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v0, p1}, Lf/f0/i/g;->O(I)Lf/f0/i/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    monitor-enter p1

    .line 7
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lf/f0/i/i;->a(J)V

    .line 8
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public i(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {p1, p2, p3}, Lf/f0/i/g;->V(ILjava/util/List;)V

    return-void
.end method

.method public j(ILf/f0/i/b;Lg/f;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lg/f;->o()I

    .line 2
    iget-object p2, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object p3, p3, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    iget-object v0, v0, Lf/f0/i/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lf/f0/i/i;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lf/f0/i/i;

    .line 4
    iget-object v0, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf/f0/i/g;->h:Z

    .line 5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 7
    invoke-virtual {v1}, Lf/f0/i/i;->g()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lf/f0/i/i;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    sget-object v2, Lf/f0/i/b;->g:Lf/f0/i/b;

    invoke-virtual {v1, v2}, Lf/f0/i/i;->p(Lf/f0/i/b;)V

    .line 9
    iget-object v2, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v1}, Lf/f0/i/i;->g()I

    move-result v1

    invoke-virtual {v2, v1}, Lf/f0/i/g;->Y(I)Lf/f0/i/i;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected k()V
    .locals 4

    .line 1
    sget-object v0, Lf/f0/i/b;->e:Lf/f0/i/b;

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/f0/i/g$j;->c:Lf/f0/i/h;

    invoke-virtual {v1, p0}, Lf/f0/i/h;->s(Lf/f0/i/h$b;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lf/f0/i/g$j;->c:Lf/f0/i/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lf/f0/i/h;->m(ZLf/f0/i/h$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lf/f0/i/b;->c:Lf/f0/i/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lf/f0/i/b;->h:Lf/f0/i/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v2, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    .line 7
    :catch_1
    :try_start_3
    sget-object v1, Lf/f0/i/b;->d:Lf/f0/i/b;

    .line 8
    sget-object v0, Lf/f0/i/b;->d:Lf/f0/i/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    iget-object v2, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    :goto_1
    invoke-virtual {v2, v1, v0}, Lf/f0/i/g;->M(Lf/f0/i/b;Lf/f0/i/b;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 10
    :catch_2
    iget-object v0, p0, Lf/f0/i/g$j;->c:Lf/f0/i/h;

    invoke-static {v0}, Lf/f0/c;->f(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v2

    .line 11
    :goto_2
    :try_start_5
    iget-object v3, p0, Lf/f0/i/g$j;->d:Lf/f0/i/g;

    invoke-virtual {v3, v1, v0}, Lf/f0/i/g;->M(Lf/f0/i/b;Lf/f0/i/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 12
    :catch_3
    iget-object v0, p0, Lf/f0/i/g$j;->c:Lf/f0/i/h;

    invoke-static {v0}, Lf/f0/c;->f(Ljava/io/Closeable;)V

    throw v2
.end method
