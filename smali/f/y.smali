.class final Lf/y;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/y$a;
    }
.end annotation


# instance fields
.field final b:Lf/w;

.field final c:Lf/f0/g/j;

.field private d:Lf/p;

.field final e:Lf/z;

.field final f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Lf/w;Lf/z;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/y;->b:Lf/w;

    .line 3
    iput-object p2, p0, Lf/y;->e:Lf/z;

    .line 4
    iput-boolean p3, p0, Lf/y;->f:Z

    .line 5
    new-instance p2, Lf/f0/g/j;

    invoke-direct {p2, p1, p3}, Lf/f0/g/j;-><init>(Lf/w;Z)V

    iput-object p2, p0, Lf/y;->c:Lf/f0/g/j;

    return-void
.end method

.method static synthetic a(Lf/y;)Lf/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/y;->d:Lf/p;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lf/f0/j/f;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/y;->c:Lf/f0/g/j;

    invoke-virtual {v1, v0}, Lf/f0/g/j;->h(Ljava/lang/Object;)V

    return-void
.end method

.method static f(Lf/w;Lf/z;Z)Lf/y;
    .locals 1

    .line 1
    new-instance v0, Lf/y;

    invoke-direct {v0, p0, p1, p2}, Lf/y;-><init>(Lf/w;Lf/z;Z)V

    .line 2
    invoke-virtual {p0}, Lf/w;->i()Lf/p$c;

    move-result-object p0

    invoke-interface {p0, v0}, Lf/p$c;->a(Lf/e;)Lf/p;

    move-result-object p0

    iput-object p0, v0, Lf/y;->d:Lf/p;

    return-object v0
.end method


# virtual methods
.method public c()Lf/y;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/y;->b:Lf/w;

    iget-object v1, p0, Lf/y;->e:Lf/z;

    iget-boolean v2, p0, Lf/y;->f:Z

    invoke-static {v0, v1, v2}, Lf/y;->f(Lf/w;Lf/z;Z)Lf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/y;->c()Lf/y;

    move-result-object v0

    return-object v0
.end method

.method d()Lf/b0;
    .locals 13

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lf/y;->b:Lf/w;

    invoke-virtual {v0}, Lf/w;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lf/y;->c:Lf/f0/g/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lf/f0/g/a;

    iget-object v2, p0, Lf/y;->b:Lf/w;

    invoke-virtual {v2}, Lf/w;->f()Lf/m;

    move-result-object v2

    invoke-direct {v0, v2}, Lf/f0/g/a;-><init>(Lf/m;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lf/f0/e/a;

    iget-object v2, p0, Lf/y;->b:Lf/w;

    invoke-virtual {v2}, Lf/w;->o()Lf/f0/e/d;

    move-result-object v2

    invoke-direct {v0, v2}, Lf/f0/e/a;-><init>(Lf/f0/e/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lf/f0/f/a;

    iget-object v2, p0, Lf/y;->b:Lf/w;

    invoke-direct {v0, v2}, Lf/f0/f/a;-><init>(Lf/w;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p0, Lf/y;->f:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lf/y;->b:Lf/w;

    invoke-virtual {v0}, Lf/w;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    new-instance v0, Lf/f0/g/b;

    iget-boolean v2, p0, Lf/y;->f:Z

    invoke-direct {v0, v2}, Lf/f0/g/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v12, Lf/f0/g/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lf/y;->e:Lf/z;

    iget-object v8, p0, Lf/y;->d:Lf/p;

    iget-object v0, p0, Lf/y;->b:Lf/w;

    .line 11
    invoke-virtual {v0}, Lf/w;->c()I

    move-result v9

    iget-object v0, p0, Lf/y;->b:Lf/w;

    .line 12
    invoke-virtual {v0}, Lf/w;->w()I

    move-result v10

    iget-object v0, p0, Lf/y;->b:Lf/w;

    invoke-virtual {v0}, Lf/w;->C()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lf/f0/g/g;-><init>(Ljava/util/List;Lf/f0/f/g;Lf/f0/g/c;Lf/f0/f/c;ILf/z;Lf/e;Lf/p;III)V

    .line 13
    iget-object v0, p0, Lf/y;->e:Lf/z;

    invoke-interface {v12, v0}, Lf/t$a;->d(Lf/z;)Lf/b0;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/y;->c:Lf/f0/g/j;

    invoke-virtual {v0}, Lf/f0/g/j;->c()Z

    move-result v0

    return v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/y;->e:Lf/z;

    invoke-virtual {v0}, Lf/z;->h()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/y;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/y;->f:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    .line 2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lf/y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Lf/f;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lf/y;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/y;->g:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lf/y;->b()V

    .line 6
    iget-object v0, p0, Lf/y;->d:Lf/p;

    invoke-virtual {v0, p0}, Lf/p;->c(Lf/e;)V

    .line 7
    iget-object v0, p0, Lf/y;->b:Lf/w;

    invoke-virtual {v0}, Lf/w;->g()Lf/n;

    move-result-object v0

    new-instance v1, Lf/y$a;

    invoke-direct {v1, p0, p1}, Lf/y$a;-><init>(Lf/y;Lf/f;)V

    invoke-virtual {v0, v1}, Lf/n;->a(Lf/y$a;)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
