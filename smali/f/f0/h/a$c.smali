.class final Lf/f0/h/a$c;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lg/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f0/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final b:Lg/i;

.field private c:Z

.field final synthetic d:Lf/f0/h/a;


# direct methods
.method constructor <init>(Lf/f0/h/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lg/i;

    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object v0, v0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {v0}, Lg/r;->timeout()Lg/t;

    move-result-object v0

    invoke-direct {p1, v0}, Lg/i;-><init>(Lg/t;)V

    iput-object p1, p0, Lf/f0/h/a$c;->b:Lg/i;

    return-void
.end method


# virtual methods
.method public c(Lg/c;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/f0/h/a$c;->c:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object v0, v0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {v0, p2, p3}, Lg/d;->e(J)Lg/d;

    .line 3
    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object v0, v0, Lf/f0/h/a;->d:Lg/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    .line 4
    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object v0, v0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {v0, p1, p2, p3}, Lg/r;->c(Lg/c;J)V

    .line 5
    iget-object p1, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object p1, p1, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {p1, v1}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf/f0/h/a$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lf/f0/h/a$c;->c:Z

    .line 3
    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object v0, v0, Lf/f0/h/a;->d:Lg/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    .line 4
    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object v1, p0, Lf/f0/h/a$c;->b:Lg/i;

    invoke-virtual {v0, v1}, Lf/f0/h/a;->g(Lg/i;)V

    .line 5
    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    const/4 v1, 0x3

    iput v1, v0, Lf/f0/h/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf/f0/h/a$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/f0/h/a$c;->d:Lf/f0/h/a;

    iget-object v0, v0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {v0}, Lg/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/h/a$c;->b:Lg/i;

    return-object v0
.end method
