.class public Ld/b/m/j;
.super Ljava/lang/Object;
.source "MimePartDataSource.java"

# interfaces
.implements Ld/a/f;
.implements Ld/b/g;


# instance fields
.field protected a:Ld/b/m/i;

.field private b:Ld/b/h;


# direct methods
.method public constructor <init>(Ld/b/m/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/b/m/j;->a:Ld/b/m/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/m/j;->a:Ld/b/m/i;

    instance-of v0, v0, Ld/b/m/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/b/m/j;->a:Ld/b/m/i;

    check-cast v0, Ld/b/m/f;

    invoke-virtual {v0}, Ld/b/m/f;->g()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/m/j;->a:Ld/b/m/i;

    instance-of v0, v0, Ld/b/m/g;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Ld/b/m/j;->a:Ld/b/m/i;

    check-cast v0, Ld/b/m/g;

    invoke-virtual {v0}, Ld/b/m/g;->f()Ljava/io/InputStream;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Ld/b/m/j;->a:Ld/b/m/i;

    iget-object v2, p0, Ld/b/m/j;->a:Ld/b/m/i;

    .line 6
    invoke-interface {v2}, Ld/b/m/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld/b/m/f;->k(Ld/b/m/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0, v1}, Ld/b/m/k;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ld/b/i;

    const-string v1, "Unknown part"

    invoke-direct {v0, v1}, Ld/b/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ld/b/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ld/b/i; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    throw v1

    :catch_1
    move-exception v0

    .line 12
    new-instance v1, Lc/f/b/a/d;

    invoke-virtual {v0}, Ld/b/d;->b()Ld/b/c;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lc/f/b/a/d;-><init>(Ld/b/c;Ljava/lang/String;)V

    throw v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/m/j;->a:Ld/b/m/i;

    invoke-interface {v0}, Ld/b/l;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ld/b/i; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public declared-synchronized c()Ld/b/h;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/m/j;->b:Ld/b/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/b/h;

    iget-object v1, p0, Ld/b/m/j;->a:Ld/b/m/i;

    invoke-direct {v0, v1}, Ld/b/h;-><init>(Ld/b/l;)V

    iput-object v0, p0, Ld/b/m/j;->b:Ld/b/h;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/m/j;->b:Ld/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
