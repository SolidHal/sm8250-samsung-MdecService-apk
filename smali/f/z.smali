.class public final Lf/z;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/z$a;
    }
.end annotation


# instance fields
.field final a:Lf/s;

.field final b:Ljava/lang/String;

.field final c:Lf/r;

.field final d:Lf/a0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/Object;

.field private volatile f:Lf/d;


# direct methods
.method constructor <init>(Lf/z$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lf/z$a;->a:Lf/s;

    iput-object v0, p0, Lf/z;->a:Lf/s;

    .line 3
    iget-object v0, p1, Lf/z$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lf/z;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lf/z$a;->c:Lf/r$a;

    invoke-virtual {v0}, Lf/r$a;->d()Lf/r;

    move-result-object v0

    iput-object v0, p0, Lf/z;->c:Lf/r;

    .line 5
    iget-object v0, p1, Lf/z$a;->d:Lf/a0;

    iput-object v0, p0, Lf/z;->d:Lf/a0;

    .line 6
    iget-object p1, p1, Lf/z$a;->e:Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Lf/z;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lf/a0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/z;->d:Lf/a0;

    return-object v0
.end method

.method public b()Lf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z;->f:Lf/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/z;->c:Lf/r;

    invoke-static {v0}, Lf/d;->l(Lf/r;)Lf/d;

    move-result-object v0

    iput-object v0, p0, Lf/z;->f:Lf/d;

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/z;->c:Lf/r;

    invoke-virtual {v0, p1}, Lf/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Lf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z;->c:Lf/r;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z;->a:Lf/s;

    invoke-virtual {v0}, Lf/s;->l()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lf/z$a;
    .locals 1

    .line 1
    new-instance v0, Lf/z$a;

    invoke-direct {v0, p0}, Lf/z$a;-><init>(Lf/z;)V

    return-object v0
.end method

.method public h()Lf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z;->a:Lf/s;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/z;->a:Lf/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/z;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
