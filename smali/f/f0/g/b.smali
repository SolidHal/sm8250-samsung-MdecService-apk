.class public final Lf/f0/g/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lf/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/f0/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lf/f0/g/b;->a:Z

    return-void
.end method


# virtual methods
.method public intercept(Lf/t$a;)Lf/b0;
    .locals 11

    .line 1
    check-cast p1, Lf/f0/g/g;

    .line 2
    invoke-virtual {p1}, Lf/f0/g/g;->i()Lf/f0/g/c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lf/f0/g/g;->k()Lf/f0/f/g;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lf/f0/g/g;->g()Lf/i;

    move-result-object v2

    check-cast v2, Lf/f0/f/c;

    .line 5
    invoke-virtual {p1}, Lf/f0/g/g;->e()Lf/z;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Lf/f0/g/g;->h()Lf/p;

    move-result-object v6

    invoke-virtual {p1}, Lf/f0/g/g;->f()Lf/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lf/p;->o(Lf/e;)V

    .line 8
    invoke-interface {v0, v3}, Lf/f0/g/c;->b(Lf/z;)V

    .line 9
    invoke-virtual {p1}, Lf/f0/g/g;->h()Lf/p;

    move-result-object v6

    invoke-virtual {p1}, Lf/f0/g/g;->f()Lf/e;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lf/p;->n(Lf/e;Lf/z;)V

    .line 10
    invoke-virtual {v3}, Lf/z;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lf/f0/g/f;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lf/z;->a()Lf/a0;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    .line 11
    invoke-virtual {v3, v6}, Lf/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12
    invoke-interface {v0}, Lf/f0/g/c;->d()V

    .line 13
    invoke-virtual {p1}, Lf/f0/g/g;->h()Lf/p;

    move-result-object v6

    invoke-virtual {p1}, Lf/f0/g/g;->f()Lf/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lf/p;->s(Lf/e;)V

    const/4 v6, 0x1

    .line 14
    invoke-interface {v0, v6}, Lf/f0/g/c;->f(Z)Lf/b0$a;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    .line 15
    invoke-virtual {p1}, Lf/f0/g/g;->h()Lf/p;

    move-result-object v2

    invoke-virtual {p1}, Lf/f0/g/g;->f()Lf/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lf/p;->m(Lf/e;)V

    .line 16
    invoke-virtual {v3}, Lf/z;->a()Lf/a0;

    move-result-object v2

    invoke-virtual {v2}, Lf/a0;->contentLength()J

    move-result-wide v8

    .line 17
    new-instance v2, Lf/f0/g/b$a;

    .line 18
    invoke-interface {v0, v3, v8, v9}, Lf/f0/g/c;->e(Lf/z;J)Lg/r;

    move-result-object v6

    invoke-direct {v2, v6}, Lf/f0/g/b$a;-><init>(Lg/r;)V

    .line 19
    invoke-static {v2}, Lg/l;->a(Lg/r;)Lg/d;

    move-result-object v6

    .line 20
    invoke-virtual {v3}, Lf/z;->a()Lf/a0;

    move-result-object v8

    invoke-virtual {v8, v6}, Lf/a0;->writeTo(Lg/d;)V

    .line 21
    invoke-interface {v6}, Lg/r;->close()V

    .line 22
    invoke-virtual {p1}, Lf/f0/g/g;->h()Lf/p;

    move-result-object v6

    .line 23
    invoke-virtual {p1}, Lf/f0/g/g;->f()Lf/e;

    move-result-object v8

    iget-wide v9, v2, Lf/f0/g/b$a;->c:J

    invoke-virtual {v6, v8, v9, v10}, Lf/p;->l(Lf/e;J)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v2}, Lf/f0/f/c;->m()Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    invoke-virtual {v1}, Lf/f0/f/g;->i()V

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v0}, Lf/f0/g/c;->a()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    .line 27
    invoke-virtual {p1}, Lf/f0/g/g;->h()Lf/p;

    move-result-object v6

    invoke-virtual {p1}, Lf/f0/g/g;->f()Lf/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lf/p;->s(Lf/e;)V

    .line 28
    invoke-interface {v0, v2}, Lf/f0/g/c;->f(Z)Lf/b0$a;

    move-result-object v7

    .line 29
    :cond_3
    invoke-virtual {v7, v3}, Lf/b0$a;->o(Lf/z;)Lf/b0$a;

    .line 30
    invoke-virtual {v1}, Lf/f0/f/g;->c()Lf/f0/f/c;

    move-result-object v6

    invoke-virtual {v6}, Lf/f0/f/c;->j()Lf/q;

    move-result-object v6

    invoke-virtual {v7, v6}, Lf/b0$a;->h(Lf/q;)Lf/b0$a;

    .line 31
    invoke-virtual {v7, v4, v5}, Lf/b0$a;->p(J)Lf/b0$a;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lf/b0$a;->n(J)Lf/b0$a;

    .line 33
    invoke-virtual {v7}, Lf/b0$a;->c()Lf/b0;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lf/b0;->s()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    .line 35
    invoke-interface {v0, v2}, Lf/f0/g/c;->f(Z)Lf/b0$a;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v3}, Lf/b0$a;->o(Lf/z;)Lf/b0$a;

    .line 37
    invoke-virtual {v1}, Lf/f0/f/g;->c()Lf/f0/f/c;

    move-result-object v3

    invoke-virtual {v3}, Lf/f0/f/c;->j()Lf/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/b0$a;->h(Lf/q;)Lf/b0$a;

    .line 38
    invoke-virtual {v2, v4, v5}, Lf/b0$a;->p(J)Lf/b0$a;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lf/b0$a;->n(J)Lf/b0$a;

    .line 40
    invoke-virtual {v2}, Lf/b0$a;->c()Lf/b0;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lf/b0;->s()I

    move-result v7

    .line 42
    :cond_4
    invoke-virtual {p1}, Lf/f0/g/g;->h()Lf/p;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lf/f0/g/g;->f()Lf/e;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lf/p;->r(Lf/e;Lf/b0;)V

    .line 44
    iget-boolean p1, p0, Lf/f0/g/b;->a:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    .line 45
    invoke-virtual {v6}, Lf/b0;->P()Lf/b0$a;

    move-result-object p1

    sget-object v0, Lf/f0/c;->c:Lf/c0;

    .line 46
    invoke-virtual {p1, v0}, Lf/b0$a;->b(Lf/c0;)Lf/b0$a;

    .line 47
    invoke-virtual {p1}, Lf/b0$a;->c()Lf/b0;

    move-result-object p1

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {v6}, Lf/b0;->P()Lf/b0$a;

    move-result-object p1

    .line 49
    invoke-interface {v0, v6}, Lf/f0/g/c;->c(Lf/b0;)Lf/c0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/b0$a;->b(Lf/c0;)Lf/b0$a;

    .line 50
    invoke-virtual {p1}, Lf/b0$a;->c()Lf/b0;

    move-result-object p1

    .line 51
    :goto_1
    invoke-virtual {p1}, Lf/b0;->S()Lf/z;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lf/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 52
    invoke-virtual {p1, v2}, Lf/b0;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    :cond_6
    invoke-virtual {v1}, Lf/f0/f/g;->i()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    .line 54
    :cond_8
    invoke-virtual {p1}, Lf/b0;->f()Lf/c0;

    move-result-object v0

    invoke-virtual {v0}, Lf/c0;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    :cond_9
    return-object p1

    .line 55
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lf/b0;->f()Lf/c0;

    move-result-object p1

    invoke-virtual {p1}, Lf/c0;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
