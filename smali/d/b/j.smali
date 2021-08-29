.class public abstract Ld/b/j;
.super Ljava/lang/Object;
.source "Multipart.java"


# instance fields
.field protected a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ld/b/a;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;

    const-string v0, "multipart/mixed"

    .line 3
    iput-object v0, p0, Ld/b/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ld/b/a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1, p0}, Ld/b/a;->f(Ld/b/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)Ld/b/a;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "No such BodyPart"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/b/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized d(Ld/b/k;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ld/a/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/b/j;->b:Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Ld/b/k;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ld/b/k;->d(I)Ld/b/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Ld/b/j;->a(Ld/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ld/b/l;)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method
