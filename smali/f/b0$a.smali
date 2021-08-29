.class public Lf/b0$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lf/z;

.field b:Lf/x;

.field c:I

.field d:Ljava/lang/String;

.field e:Lf/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lf/r$a;

.field g:Lf/c0;

.field h:Lf/b0;

.field i:Lf/b0;

.field j:Lf/b0;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/b0$a;->c:I

    .line 3
    new-instance v0, Lf/r$a;

    invoke-direct {v0}, Lf/r$a;-><init>()V

    iput-object v0, p0, Lf/b0$a;->f:Lf/r$a;

    return-void
.end method

.method constructor <init>(Lf/b0;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lf/b0$a;->c:I

    .line 6
    iget-object v0, p1, Lf/b0;->b:Lf/z;

    iput-object v0, p0, Lf/b0$a;->a:Lf/z;

    .line 7
    iget-object v0, p1, Lf/b0;->c:Lf/x;

    iput-object v0, p0, Lf/b0$a;->b:Lf/x;

    .line 8
    iget v0, p1, Lf/b0;->d:I

    iput v0, p0, Lf/b0$a;->c:I

    .line 9
    iget-object v0, p1, Lf/b0;->e:Ljava/lang/String;

    iput-object v0, p0, Lf/b0$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lf/b0;->f:Lf/q;

    iput-object v0, p0, Lf/b0$a;->e:Lf/q;

    .line 11
    iget-object v0, p1, Lf/b0;->g:Lf/r;

    invoke-virtual {v0}, Lf/r;->d()Lf/r$a;

    move-result-object v0

    iput-object v0, p0, Lf/b0$a;->f:Lf/r$a;

    .line 12
    iget-object v0, p1, Lf/b0;->h:Lf/c0;

    iput-object v0, p0, Lf/b0$a;->g:Lf/c0;

    .line 13
    iget-object v0, p1, Lf/b0;->i:Lf/b0;

    iput-object v0, p0, Lf/b0$a;->h:Lf/b0;

    .line 14
    iget-object v0, p1, Lf/b0;->j:Lf/b0;

    iput-object v0, p0, Lf/b0$a;->i:Lf/b0;

    .line 15
    iget-object v0, p1, Lf/b0;->k:Lf/b0;

    iput-object v0, p0, Lf/b0$a;->j:Lf/b0;

    .line 16
    iget-wide v0, p1, Lf/b0;->l:J

    iput-wide v0, p0, Lf/b0$a;->k:J

    .line 17
    iget-wide v0, p1, Lf/b0;->m:J

    iput-wide v0, p0, Lf/b0$a;->l:J

    return-void
.end method

.method private e(Lf/b0;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lf/b0;->h:Lf/c0;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Ljava/lang/String;Lf/b0;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lf/b0;->h:Lf/c0;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p2, Lf/b0;->i:Lf/b0;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p2, Lf/b0;->j:Lf/b0;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p2, Lf/b0;->k:Lf/b0;

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lf/b0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/b0$a;->f:Lf/r$a;

    invoke-virtual {v0, p1, p2}, Lf/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/r$a;

    return-object p0
.end method

.method public b(Lf/c0;)Lf/b0$a;
    .locals 0
    .param p1    # Lf/c0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/b0$a;->g:Lf/c0;

    return-object p0
.end method

.method public c()Lf/b0;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/b0$a;->a:Lf/z;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lf/b0$a;->b:Lf/x;

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lf/b0$a;->c:I

    if-ltz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/b0$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lf/b0;

    invoke-direct {v0, p0}, Lf/b0;-><init>(Lf/b0$a;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf/b0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lf/b0;)Lf/b0$a;
    .locals 1
    .param p1    # Lf/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Lf/b0$a;->f(Ljava/lang/String;Lf/b0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lf/b0$a;->i:Lf/b0;

    return-object p0
.end method

.method public g(I)Lf/b0$a;
    .locals 0

    .line 1
    iput p1, p0, Lf/b0$a;->c:I

    return-object p0
.end method

.method public h(Lf/q;)Lf/b0$a;
    .locals 0
    .param p1    # Lf/q;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/b0$a;->e:Lf/q;

    return-object p0
.end method

.method public i(Lf/r;)Lf/b0$a;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lf/r;->d()Lf/r$a;

    move-result-object p1

    iput-object p1, p0, Lf/b0$a;->f:Lf/r$a;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lf/b0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf/b0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public k(Lf/b0;)Lf/b0$a;
    .locals 1
    .param p1    # Lf/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Lf/b0$a;->f(Ljava/lang/String;Lf/b0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lf/b0$a;->h:Lf/b0;

    return-object p0
.end method

.method public l(Lf/b0;)Lf/b0$a;
    .locals 0
    .param p1    # Lf/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lf/b0$a;->e(Lf/b0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lf/b0$a;->j:Lf/b0;

    return-object p0
.end method

.method public m(Lf/x;)Lf/b0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf/b0$a;->b:Lf/x;

    return-object p0
.end method

.method public n(J)Lf/b0$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/b0$a;->l:J

    return-object p0
.end method

.method public o(Lf/z;)Lf/b0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf/b0$a;->a:Lf/z;

    return-object p0
.end method

.method public p(J)Lf/b0$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/b0$a;->k:J

    return-object p0
.end method
