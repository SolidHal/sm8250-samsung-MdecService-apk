.class public final Lf/f0/i/f;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lf/f0/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/f0/i/f$a;
    }
.end annotation


# static fields
.field private static final e:Lg/f;

.field private static final f:Lg/f;

.field private static final g:Lg/f;

.field private static final h:Lg/f;

.field private static final i:Lg/f;

.field private static final j:Lg/f;

.field private static final k:Lg/f;

.field private static final l:Lg/f;

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lf/t$a;

.field final b:Lf/f0/f/g;

.field private final c:Lf/f0/i/g;

.field private d:Lf/f0/i/i;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    .line 1
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->e:Lg/f;

    const-string v0, "host"

    .line 2
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->f:Lg/f;

    const-string v0, "keep-alive"

    .line 3
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->g:Lg/f;

    const-string v0, "proxy-connection"

    .line 4
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->h:Lg/f;

    const-string v0, "transfer-encoding"

    .line 5
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->i:Lg/f;

    const-string v0, "te"

    .line 6
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->j:Lg/f;

    const-string v0, "encoding"

    .line 7
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->k:Lg/f;

    const-string v0, "upgrade"

    .line 8
    invoke-static {v0}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->l:Lg/f;

    const/16 v1, 0xc

    new-array v1, v1, [Lg/f;

    .line 9
    sget-object v2, Lf/f0/i/f;->e:Lg/f;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lf/f0/i/f;->f:Lg/f;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lf/f0/i/f;->g:Lg/f;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lf/f0/i/f;->h:Lg/f;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lf/f0/i/f;->j:Lg/f;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lf/f0/i/f;->i:Lg/f;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lf/f0/i/f;->k:Lg/f;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lf/f0/i/c;->f:Lg/f;

    const/16 v10, 0x8

    aput-object v0, v1, v10

    sget-object v0, Lf/f0/i/c;->g:Lg/f;

    const/16 v11, 0x9

    aput-object v0, v1, v11

    sget-object v0, Lf/f0/i/c;->h:Lg/f;

    const/16 v11, 0xa

    aput-object v0, v1, v11

    sget-object v0, Lf/f0/i/c;->i:Lg/f;

    const/16 v11, 0xb

    aput-object v0, v1, v11

    invoke-static {v1}, Lf/f0/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->m:Ljava/util/List;

    new-array v0, v10, [Lg/f;

    .line 10
    sget-object v1, Lf/f0/i/f;->e:Lg/f;

    aput-object v1, v0, v3

    sget-object v1, Lf/f0/i/f;->f:Lg/f;

    aput-object v1, v0, v4

    sget-object v1, Lf/f0/i/f;->g:Lg/f;

    aput-object v1, v0, v5

    sget-object v1, Lf/f0/i/f;->h:Lg/f;

    aput-object v1, v0, v6

    sget-object v1, Lf/f0/i/f;->j:Lg/f;

    aput-object v1, v0, v7

    sget-object v1, Lf/f0/i/f;->i:Lg/f;

    aput-object v1, v0, v8

    sget-object v1, Lf/f0/i/f;->k:Lg/f;

    aput-object v1, v0, v9

    sget-object v1, Lf/f0/i/f;->l:Lg/f;

    aput-object v1, v0, v2

    invoke-static {v0}, Lf/f0/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf/f0/i/f;->n:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lf/w;Lf/t$a;Lf/f0/f/g;Lf/f0/i/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/f0/i/f;->a:Lf/t$a;

    .line 3
    iput-object p3, p0, Lf/f0/i/f;->b:Lf/f0/f/g;

    .line 4
    iput-object p4, p0, Lf/f0/i/f;->c:Lf/f0/i/g;

    return-void
.end method

.method public static g(Lf/z;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/z;",
            ")",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/z;->d()Lf/r;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lf/r;->f()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lf/f0/i/c;

    sget-object v3, Lf/f0/i/c;->f:Lg/f;

    invoke-virtual {p0}, Lf/z;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lf/f0/i/c;-><init>(Lg/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lf/f0/i/c;

    sget-object v3, Lf/f0/i/c;->g:Lg/f;

    invoke-virtual {p0}, Lf/z;->h()Lf/s;

    move-result-object v4

    invoke-static {v4}, Lf/f0/g/i;->c(Lf/s;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lf/f0/i/c;-><init>(Lg/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 5
    invoke-virtual {p0, v2}, Lf/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lf/f0/i/c;

    sget-object v4, Lf/f0/i/c;->i:Lg/f;

    invoke-direct {v3, v4, v2}, Lf/f0/i/c;-><init>(Lg/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v2, Lf/f0/i/c;

    sget-object v3, Lf/f0/i/c;->h:Lg/f;

    invoke-virtual {p0}, Lf/z;->h()Lf/s;

    move-result-object p0

    invoke-virtual {p0}, Lf/s;->B()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lf/f0/i/c;-><init>(Lg/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0}, Lf/r;->f()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 9
    invoke-virtual {v0, p0}, Lf/r;->c(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg/f;->g(Ljava/lang/String;)Lg/f;

    move-result-object v3

    .line 10
    sget-object v4, Lf/f0/i/f;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    new-instance v4, Lf/f0/i/c;

    invoke-virtual {v0, p0}, Lf/r;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lf/f0/i/c;-><init>(Lg/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static h(Ljava/util/List;)Lf/b0$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;)",
            "Lf/b0$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/r$a;

    invoke-direct {v0}, Lf/r$a;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/f0/i/c;

    if-nez v5, :cond_0

    if-eqz v4, :cond_2

    .line 4
    iget v5, v4, Lf/f0/g/k;->b:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 5
    new-instance v0, Lf/r$a;

    invoke-direct {v0}, Lf/r$a;-><init>()V

    move-object v4, v2

    goto :goto_1

    .line 6
    :cond_0
    iget-object v6, v5, Lf/f0/i/c;->a:Lg/f;

    .line 7
    iget-object v5, v5, Lf/f0/i/c;->b:Lg/f;

    invoke-virtual {v5}, Lg/f;->t()Ljava/lang/String;

    move-result-object v5

    .line 8
    sget-object v7, Lf/f0/i/c;->e:Lg/f;

    invoke-virtual {v6, v7}, Lg/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lf/f0/g/k;->a(Ljava/lang/String;)Lf/f0/g/k;

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_1
    sget-object v7, Lf/f0/i/f;->n:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 11
    sget-object v7, Lf/f0/a;->a:Lf/f0/a;

    invoke-virtual {v6}, Lg/f;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6, v5}, Lf/f0/a;->b(Lf/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 12
    new-instance p0, Lf/b0$a;

    invoke-direct {p0}, Lf/b0$a;-><init>()V

    sget-object v1, Lf/x;->f:Lf/x;

    .line 13
    invoke-virtual {p0, v1}, Lf/b0$a;->m(Lf/x;)Lf/b0$a;

    iget v1, v4, Lf/f0/g/k;->b:I

    .line 14
    invoke-virtual {p0, v1}, Lf/b0$a;->g(I)Lf/b0$a;

    iget-object v1, v4, Lf/f0/g/k;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v1}, Lf/b0$a;->j(Ljava/lang/String;)Lf/b0$a;

    .line 16
    invoke-virtual {v0}, Lf/r$a;->d()Lf/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/b0$a;->i(Lf/r;)Lf/b0$a;

    return-object p0

    .line 17
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/i/f;->d:Lf/f0/i/i;

    invoke-virtual {v0}, Lf/f0/i/i;->h()Lg/r;

    move-result-object v0

    invoke-interface {v0}, Lg/r;->close()V

    return-void
.end method

.method public b(Lf/z;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/f0/i/f;->d:Lf/f0/i/i;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lf/z;->a()Lf/a0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lf/f0/i/f;->g(Lf/z;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lf/f0/i/f;->c:Lf/f0/i/g;

    invoke-virtual {v1, p1, v0}, Lf/f0/i/g;->S(Ljava/util/List;Z)Lf/f0/i/i;

    move-result-object p1

    iput-object p1, p0, Lf/f0/i/f;->d:Lf/f0/i/i;

    .line 5
    invoke-virtual {p1}, Lf/f0/i/i;->l()Lg/t;

    move-result-object p1

    iget-object v0, p0, Lf/f0/i/f;->a:Lf/t$a;

    invoke-interface {v0}, Lf/t$a;->b()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lg/t;->g(JLjava/util/concurrent/TimeUnit;)Lg/t;

    .line 6
    iget-object p1, p0, Lf/f0/i/f;->d:Lf/f0/i/i;

    invoke-virtual {p1}, Lf/f0/i/i;->s()Lg/t;

    move-result-object p1

    iget-object v0, p0, Lf/f0/i/f;->a:Lf/t$a;

    invoke-interface {v0}, Lf/t$a;->c()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lg/t;->g(JLjava/util/concurrent/TimeUnit;)Lg/t;

    return-void
.end method

.method public c(Lf/b0;)Lf/c0;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/f0/i/f;->b:Lf/f0/f/g;

    iget-object v1, v0, Lf/f0/f/g;->f:Lf/p;

    iget-object v0, v0, Lf/f0/f/g;->e:Lf/e;

    invoke-virtual {v1, v0}, Lf/p;->q(Lf/e;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Lf/b0;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lf/f0/g/e;->b(Lf/b0;)J

    move-result-wide v1

    .line 4
    new-instance p1, Lf/f0/i/f$a;

    iget-object v3, p0, Lf/f0/i/f;->d:Lf/f0/i/i;

    invoke-virtual {v3}, Lf/f0/i/i;->i()Lg/s;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lf/f0/i/f$a;-><init>(Lf/f0/i/f;Lg/s;)V

    .line 5
    new-instance v3, Lf/f0/g/h;

    invoke-static {p1}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lf/f0/g/h;-><init>(Ljava/lang/String;JLg/e;)V

    return-object v3
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/i/f;->c:Lf/f0/i/g;

    invoke-virtual {v0}, Lf/f0/i/g;->flush()V

    return-void
.end method

.method public e(Lf/z;J)Lg/r;
    .locals 0

    .line 1
    iget-object p1, p0, Lf/f0/i/f;->d:Lf/f0/i/i;

    invoke-virtual {p1}, Lf/f0/i/i;->h()Lg/r;

    move-result-object p1

    return-object p1
.end method

.method public f(Z)Lf/b0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f0/i/f;->d:Lf/f0/i/i;

    invoke-virtual {v0}, Lf/f0/i/i;->q()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lf/f0/i/f;->h(Ljava/util/List;)Lf/b0$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lf/f0/a;->a:Lf/f0/a;

    invoke-virtual {p1, v0}, Lf/f0/a;->d(Lf/b0$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method
