.class final Lg/m;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lg/d;


# instance fields
.field public final b:Lg/c;

.field public final c:Lg/r;

.field d:Z


# direct methods
.method constructor <init>(Lg/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    iput-object v0, p0, Lg/m;->b:Lg/c;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lg/m;->c:Lg/r;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public B(Ljava/lang/String;)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->k0(Ljava/lang/String;)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(J)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->e0(J)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lg/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/m;->b:Lg/c;

    return-object v0
.end method

.method public b([BII)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1, p2, p3}, Lg/c;->c0([BII)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lg/c;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1, p2, p3}, Lg/c;->c(Lg/c;J)V

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lg/m;->b:Lg/c;

    iget-wide v1, v1, Lg/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lg/m;->c:Lg/r;

    iget-object v2, p0, Lg/m;->b:Lg/c;

    iget-object v3, p0, Lg/m;->b:Lg/c;

    iget-wide v3, v3, Lg/c;->c:J

    invoke-interface {v1, v2, v3, v4}, Lg/r;->c(Lg/c;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lg/m;->c:Lg/r;

    invoke-interface {v2}, Lg/r;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lg/m;->d:Z

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {v1}, Lg/u;->e(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d(Lg/s;)J
    .locals 6

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lg/m;->b:Lg/c;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lg/s;->read(Lg/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    goto :goto_0

    :cond_0
    return-wide v0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(J)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->f0(J)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    iget-wide v1, v0, Lg/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 3
    iget-object v3, p0, Lg/m;->c:Lg/r;

    invoke-interface {v3, v0, v1, v2}, Lg/r;->c(Lg/c;J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lg/m;->c:Lg/r;

    invoke-interface {v0}, Lg/r;->flush()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(I)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->h0(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k(I)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->g0(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(I)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->d0(I)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/m;->c:Lg/r;

    invoke-interface {v0}, Lg/r;->timeout()Lg/t;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/m;->c:Lg/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v([B)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->b0([B)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Lg/f;)Lg/d;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->a0(Lg/f;)Lg/c;

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lg/m;->y()Lg/d;

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Lg/d;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lg/m;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/m;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->K()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3
    iget-object v2, p0, Lg/m;->c:Lg/r;

    iget-object v3, p0, Lg/m;->b:Lg/c;

    invoke-interface {v2, v3, v0, v1}, Lg/r;->c(Lg/c;J)V

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
