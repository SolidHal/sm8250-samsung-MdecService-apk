.class public final Lf/f0/h/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lf/f0/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/f0/h/a$g;,
        Lf/f0/h/a$d;,
        Lf/f0/h/a$f;,
        Lf/f0/h/a$b;,
        Lf/f0/h/a$c;,
        Lf/f0/h/a$e;
    }
.end annotation


# instance fields
.field final a:Lf/w;

.field final b:Lf/f0/f/g;

.field final c:Lg/e;

.field final d:Lg/d;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lf/w;Lf/f0/f/g;Lg/e;Lg/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/f0/h/a;->e:I

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Lf/f0/h/a;->f:J

    .line 4
    iput-object p1, p0, Lf/f0/h/a;->a:Lf/w;

    .line 5
    iput-object p2, p0, Lf/f0/h/a;->b:Lf/f0/f/g;

    .line 6
    iput-object p3, p0, Lf/f0/h/a;->c:Lg/e;

    .line 7
    iput-object p4, p0, Lf/f0/h/a;->d:Lg/d;

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lf/f0/h/a;->c:Lg/e;

    iget-wide v1, p0, Lf/f0/h/a;->f:J

    invoke-interface {v0, v1, v2}, Lg/e;->z(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lf/f0/h/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf/f0/h/a;->f:J

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {v0}, Lg/d;->flush()V

    return-void
.end method

.method public b(Lf/z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/h/a;->b:Lf/f0/f/g;

    .line 2
    invoke-virtual {v0}, Lf/f0/f/g;->c()Lf/f0/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lf/f0/f/c;->p()Lf/d0;

    move-result-object v0

    invoke-virtual {v0}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lf/f0/g/i;->a(Lf/z;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lf/z;->d()Lf/r;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lf/f0/h/a;->o(Lf/r;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lf/b0;)Lf/c0;
    .locals 6

    .line 1
    iget-object v0, p0, Lf/f0/h/a;->b:Lf/f0/f/g;

    iget-object v1, v0, Lf/f0/f/g;->f:Lf/p;

    iget-object v0, v0, Lf/f0/f/g;->e:Lf/e;

    invoke-virtual {v1, v0}, Lf/p;->q(Lf/e;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Lf/b0;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lf/f0/g/e;->c(Lf/b0;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Lf/f0/h/a;->k(J)Lg/s;

    move-result-object p1

    .line 5
    new-instance v3, Lf/f0/g/h;

    invoke-static {p1}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lf/f0/g/h;-><init>(Ljava/lang/String;JLg/e;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 6
    invoke-virtual {p1, v1}, Lf/b0;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lf/b0;->S()Lf/z;

    move-result-object p1

    invoke-virtual {p1}, Lf/z;->h()Lf/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/f0/h/a;->i(Lf/s;)Lg/s;

    move-result-object p1

    .line 8
    new-instance v1, Lf/f0/g/h;

    invoke-static {p1}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lf/f0/g/h;-><init>(Ljava/lang/String;JLg/e;)V

    return-object v1

    .line 9
    :cond_1
    invoke-static {p1}, Lf/f0/g/e;->b(Lf/b0;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, v4, v5}, Lf/f0/h/a;->k(J)Lg/s;

    move-result-object p1

    .line 11
    new-instance v1, Lf/f0/g/h;

    invoke-static {p1}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lf/f0/g/h;-><init>(Ljava/lang/String;JLg/e;)V

    return-object v1

    .line 12
    :cond_2
    new-instance p1, Lf/f0/g/h;

    invoke-virtual {p0}, Lf/f0/h/a;->l()Lg/s;

    move-result-object v1

    invoke-static {v1}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lf/f0/g/h;-><init>(Ljava/lang/String;JLg/e;)V

    return-object p1
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {v0}, Lg/d;->flush()V

    return-void
.end method

.method public e(Lf/z;J)Lg/r;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lf/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/f0/h/a;->h()Lg/r;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p2, p3}, Lf/f0/h/a;->j(J)Lg/r;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Z)Lf/b0$a;
    .locals 4

    .line 1
    iget v0, p0, Lf/f0/h/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/f0/h/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lf/f0/h/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/f0/g/k;->a(Ljava/lang/String;)Lf/f0/g/k;

    move-result-object v0

    .line 4
    new-instance v2, Lf/b0$a;

    invoke-direct {v2}, Lf/b0$a;-><init>()V

    iget-object v3, v0, Lf/f0/g/k;->a:Lf/x;

    .line 5
    invoke-virtual {v2, v3}, Lf/b0$a;->m(Lf/x;)Lf/b0$a;

    iget v3, v0, Lf/f0/g/k;->b:I

    .line 6
    invoke-virtual {v2, v3}, Lf/b0$a;->g(I)Lf/b0$a;

    iget-object v3, v0, Lf/f0/g/k;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Lf/b0$a;->j(Ljava/lang/String;)Lf/b0$a;

    .line 8
    invoke-virtual {p0}, Lf/f0/h/a;->n()Lf/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/b0$a;->i(Lf/r;)Lf/b0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Lf/f0/g/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_2
    iget p1, v0, Lf/f0/g/k;->b:I

    if-ne p1, v3, :cond_3

    .line 11
    iput v1, p0, Lf/f0/h/a;->e:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lf/f0/h/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/f0/h/a;->b:Lf/f0/f/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v0
.end method

.method g(Lg/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lg/i;->i()Lg/t;

    move-result-object v0

    .line 2
    sget-object v1, Lg/t;->d:Lg/t;

    invoke-virtual {p1, v1}, Lg/i;->j(Lg/t;)Lg/i;

    .line 3
    invoke-virtual {v0}, Lg/t;->a()Lg/t;

    .line 4
    invoke-virtual {v0}, Lg/t;->b()Lg/t;

    return-void
.end method

.method public h()Lg/r;
    .locals 3

    .line 1
    iget v0, p0, Lf/f0/h/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lf/f0/h/a;->e:I

    .line 3
    new-instance v0, Lf/f0/h/a$c;

    invoke-direct {v0, p0}, Lf/f0/h/a$c;-><init>(Lf/f0/h/a;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf/f0/h/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lf/s;)Lg/s;
    .locals 2

    .line 1
    iget v0, p0, Lf/f0/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lf/f0/h/a;->e:I

    .line 3
    new-instance v0, Lf/f0/h/a$d;

    invoke-direct {v0, p0, p1}, Lf/f0/h/a$d;-><init>(Lf/f0/h/a;Lf/s;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/f0/h/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(J)Lg/r;
    .locals 2

    .line 1
    iget v0, p0, Lf/f0/h/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lf/f0/h/a;->e:I

    .line 3
    new-instance v0, Lf/f0/h/a$e;

    invoke-direct {v0, p0, p1, p2}, Lf/f0/h/a$e;-><init>(Lf/f0/h/a;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/f0/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(J)Lg/s;
    .locals 2

    .line 1
    iget v0, p0, Lf/f0/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lf/f0/h/a;->e:I

    .line 3
    new-instance v0, Lf/f0/h/a$f;

    invoke-direct {v0, p0, p1, p2}, Lf/f0/h/a$f;-><init>(Lf/f0/h/a;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/f0/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Lg/s;
    .locals 3

    .line 1
    iget v0, p0, Lf/f0/h/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lf/f0/h/a;->b:Lf/f0/f/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lf/f0/h/a;->e:I

    .line 4
    invoke-virtual {v0}, Lf/f0/f/g;->i()V

    .line 5
    new-instance v0, Lf/f0/h/a$g;

    invoke-direct {v0, p0}, Lf/f0/h/a$g;-><init>(Lf/f0/h/a;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf/f0/h/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lf/r;
    .locals 3

    .line 1
    new-instance v0, Lf/r$a;

    invoke-direct {v0}, Lf/r$a;-><init>()V

    .line 2
    :goto_0
    invoke-direct {p0}, Lf/f0/h/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lf/f0/a;->a:Lf/f0/a;

    invoke-virtual {v2, v0, v1}, Lf/f0/a;->a(Lf/r$a;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lf/r$a;->d()Lf/r;

    move-result-object v0

    return-object v0
.end method

.method public o(Lf/r;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lf/f0/h/a;->e:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {v0, p2}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lf/r;->f()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Lf/f0/h/a;->d:Lg/d;

    invoke-virtual {p1, p2}, Lf/r;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lf/r;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lf/f0/h/a;->d:Lg/d;

    invoke-interface {p1, v0}, Lg/d;->B(Ljava/lang/String;)Lg/d;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lf/f0/h/a;->e:I

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf/f0/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
