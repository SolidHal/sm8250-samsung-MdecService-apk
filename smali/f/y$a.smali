.class final Lf/y$a;
.super Lf/f0/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final c:Lf/f;

.field final synthetic d:Lf/y;


# direct methods
.method constructor <init>(Lf/y;Lf/f;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/y$a;->d:Lf/y;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lf/y;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lf/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lf/y$a;->c:Lf/f;

    return-void
.end method


# virtual methods
.method protected k()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lf/y$a;->d:Lf/y;

    invoke-virtual {v2}, Lf/y;->d()Lf/b0;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lf/y$a;->d:Lf/y;

    iget-object v3, v3, Lf/y;->c:Lf/f0/g/j;

    invoke-virtual {v3}, Lf/f0/g/j;->c()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lf/y$a;->c:Lf/f;

    iget-object v2, p0, Lf/y$a;->d:Lf/y;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lf/f;->onFailure(Lf/e;Ljava/io/IOException;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lf/y$a;->c:Lf/f;

    iget-object v3, p0, Lf/y$a;->d:Lf/y;

    invoke-interface {v1, v3, v2}, Lf/f;->onResponse(Lf/e;Lf/b0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    iget-object v0, p0, Lf/y$a;->d:Lf/y;

    iget-object v0, v0, Lf/y;->b:Lf/w;

    invoke-virtual {v0}, Lf/w;->g()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/n;->d(Lf/y$a;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    if-eqz v0, :cond_1

    .line 6
    :try_start_2
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/y$a;->d:Lf/y;

    invoke-virtual {v4}, Lf/y;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lf/f0/j/f;->o(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lf/y$a;->d:Lf/y;

    invoke-static {v0}, Lf/y;->a(Lf/y;)Lf/p;

    move-result-object v0

    iget-object v2, p0, Lf/y$a;->d:Lf/y;

    invoke-virtual {v0, v2, v1}, Lf/p;->b(Lf/e;Ljava/io/IOException;)V

    .line 8
    iget-object v0, p0, Lf/y$a;->c:Lf/f;

    iget-object v2, p0, Lf/y$a;->d:Lf/y;

    invoke-interface {v0, v2, v1}, Lf/f;->onFailure(Lf/e;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 9
    :goto_3
    iget-object v1, p0, Lf/y$a;->d:Lf/y;

    iget-object v1, v1, Lf/y;->b:Lf/w;

    invoke-virtual {v1}, Lf/w;->g()Lf/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lf/n;->d(Lf/y$a;)V

    throw v0
.end method

.method l()Lf/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/y$a;->d:Lf/y;

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/y$a;->d:Lf/y;

    iget-object v0, v0, Lf/y;->e:Lf/z;

    invoke-virtual {v0}, Lf/z;->h()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
