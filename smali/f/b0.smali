.class public final Lf/b0;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/b0$a;
    }
.end annotation


# instance fields
.field final b:Lf/z;

.field final c:Lf/x;

.field final d:I

.field final e:Ljava/lang/String;

.field final f:Lf/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:Lf/r;

.field final h:Lf/c0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Lf/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Lf/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:Lf/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final l:J

.field final m:J

.field private volatile n:Lf/d;


# direct methods
.method constructor <init>(Lf/b0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lf/b0$a;->a:Lf/z;

    iput-object v0, p0, Lf/b0;->b:Lf/z;

    .line 3
    iget-object v0, p1, Lf/b0$a;->b:Lf/x;

    iput-object v0, p0, Lf/b0;->c:Lf/x;

    .line 4
    iget v0, p1, Lf/b0$a;->c:I

    iput v0, p0, Lf/b0;->d:I

    .line 5
    iget-object v0, p1, Lf/b0$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lf/b0;->e:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lf/b0$a;->e:Lf/q;

    iput-object v0, p0, Lf/b0;->f:Lf/q;

    .line 7
    iget-object v0, p1, Lf/b0$a;->f:Lf/r$a;

    invoke-virtual {v0}, Lf/r$a;->d()Lf/r;

    move-result-object v0

    iput-object v0, p0, Lf/b0;->g:Lf/r;

    .line 8
    iget-object v0, p1, Lf/b0$a;->g:Lf/c0;

    iput-object v0, p0, Lf/b0;->h:Lf/c0;

    .line 9
    iget-object v0, p1, Lf/b0$a;->h:Lf/b0;

    iput-object v0, p0, Lf/b0;->i:Lf/b0;

    .line 10
    iget-object v0, p1, Lf/b0$a;->i:Lf/b0;

    iput-object v0, p0, Lf/b0;->j:Lf/b0;

    .line 11
    iget-object v0, p1, Lf/b0$a;->j:Lf/b0;

    iput-object v0, p0, Lf/b0;->k:Lf/b0;

    .line 12
    iget-wide v0, p1, Lf/b0$a;->k:J

    iput-wide v0, p0, Lf/b0;->l:J

    .line 13
    iget-wide v0, p1, Lf/b0$a;->l:J

    iput-wide v0, p0, Lf/b0;->m:J

    return-void
.end method


# virtual methods
.method public K()Lf/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/b0;->f:Lf/q;

    return-object v0
.end method

.method public L(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lf/b0;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/b0;->g:Lf/r;

    invoke-virtual {v0, p1}, Lf/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public N()Lf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/b0;->g:Lf/r;

    return-object v0
.end method

.method public O()Z
    .locals 2

    .line 1
    iget v0, p0, Lf/b0;->d:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P()Lf/b0$a;
    .locals 1

    .line 1
    new-instance v0, Lf/b0$a;

    invoke-direct {v0, p0}, Lf/b0$a;-><init>(Lf/b0;)V

    return-object v0
.end method

.method public Q()Lf/b0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/b0;->k:Lf/b0;

    return-object v0
.end method

.method public R()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/b0;->m:J

    return-wide v0
.end method

.method public S()Lf/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/b0;->b:Lf/z;

    return-object v0
.end method

.method public T()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/b0;->l:J

    return-wide v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/b0;->h:Lf/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/c0;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lf/c0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/b0;->h:Lf/c0;

    return-object v0
.end method

.method public m()Lf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/b0;->n:Lf/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/b0;->g:Lf/r;

    invoke-static {v0}, Lf/d;->l(Lf/r;)Lf/d;

    move-result-object v0

    iput-object v0, p0, Lf/b0;->n:Lf/d;

    :goto_0
    return-object v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lf/b0;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/b0;->c:Lf/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/b0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/b0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/b0;->b:Lf/z;

    .line 2
    invoke-virtual {v1}, Lf/z;->h()Lf/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
