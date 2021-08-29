.class public Ld/a/e;
.super Ljava/lang/Object;
.source "DataHandler.java"


# static fields
.field private static final i:[Ld/a/a;

.field private static j:Ld/a/d;


# instance fields
.field private a:Ld/a/f;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ld/a/b;

.field private e:Ld/a/c;

.field private f:Ld/a/c;

.field private g:Ld/a/d;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ld/a/a;

    .line 1
    sput-object v0, Ld/a/e;->i:[Ld/a/a;

    return-void
.end method

.method public constructor <init>(Ld/a/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/a/e;->a:Ld/a/f;

    .line 3
    iput-object v0, p0, Ld/a/e;->b:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Ld/a/e;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ld/a/e;->d:Ld/a/b;

    .line 6
    iput-object v0, p0, Ld/a/e;->e:Ld/a/c;

    .line 7
    iput-object v0, p0, Ld/a/e;->f:Ld/a/c;

    .line 8
    iput-object v0, p0, Ld/a/e;->g:Ld/a/d;

    .line 9
    iput-object v0, p0, Ld/a/e;->h:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Ld/a/e;->a:Ld/a/f;

    .line 11
    sget-object p1, Ld/a/e;->j:Ld/a/d;

    iput-object p1, p0, Ld/a/e;->g:Ld/a/d;

    return-void
.end method

.method static synthetic a(Ld/a/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/a/e;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Ld/a/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/a/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/a/e;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ld/a/e;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    new-instance v1, Ld/a/i;

    invoke-direct {v1, v0}, Ld/a/i;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ld/a/i;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/a/e;->h:Ljava/lang/String;
    :try_end_1
    .catch Ld/a/k; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :catch_0
    :try_start_2
    iput-object v0, p0, Ld/a/e;->h:Ljava/lang/String;

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Ld/a/e;->h:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Ld/a/b;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/a/e;->d:Ld/a/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/a/e;->d:Ld/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Ld/a/b;->c()Ld/a/b;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Ld/a/c;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Ld/a/e;->j:Ld/a/d;

    iget-object v1, p0, Ld/a/e;->g:Ld/a/d;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Ld/a/e;->j:Ld/a/d;

    iput-object v0, p0, Ld/a/e;->g:Ld/a/d;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ld/a/e;->f:Ld/a/c;

    .line 4
    iput-object v0, p0, Ld/a/e;->e:Ld/a/c;

    .line 5
    :cond_0
    iget-object v0, p0, Ld/a/e;->e:Ld/a/c;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ld/a/e;->e:Ld/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ld/a/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Ld/a/e;->f:Ld/a/c;

    if-nez v1, :cond_2

    sget-object v1, Ld/a/e;->j:Ld/a/d;

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Ld/a/e;->j:Ld/a/d;

    invoke-interface {v1, v0}, Ld/a/d;->a(Ljava/lang/String;)Ld/a/c;

    move-result-object v1

    iput-object v1, p0, Ld/a/e;->f:Ld/a/c;

    .line 10
    :cond_2
    iget-object v1, p0, Ld/a/e;->f:Ld/a/c;

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Ld/a/e;->f:Ld/a/c;

    iput-object v1, p0, Ld/a/e;->e:Ld/a/c;

    .line 12
    :cond_3
    iget-object v1, p0, Ld/a/e;->e:Ld/a/c;

    if-nez v1, :cond_5

    .line 13
    iget-object v1, p0, Ld/a/e;->a:Ld/a/f;

    if-eqz v1, :cond_4

    .line 14
    invoke-direct {p0}, Ld/a/e;->d()Ld/a/b;

    move-result-object v1

    iget-object v2, p0, Ld/a/e;->a:Ld/a/f;

    .line 15
    invoke-virtual {v1, v0, v2}, Ld/a/b;->b(Ljava/lang/String;Ld/a/f;)Ld/a/c;

    move-result-object v0

    iput-object v0, p0, Ld/a/e;->e:Ld/a/c;

    goto :goto_0

    .line 16
    :cond_4
    invoke-direct {p0}, Ld/a/e;->d()Ld/a/b;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Ld/a/b;->a(Ljava/lang/String;)Ld/a/c;

    move-result-object v0

    iput-object v0, p0, Ld/a/e;->e:Ld/a/c;

    .line 18
    :cond_5
    :goto_0
    iget-object v0, p0, Ld/a/e;->a:Ld/a/f;

    if-eqz v0, :cond_6

    .line 19
    new-instance v0, Ld/a/g;

    iget-object v1, p0, Ld/a/e;->e:Ld/a/c;

    iget-object v2, p0, Ld/a/e;->a:Ld/a/f;

    invoke-direct {v0, v1, v2}, Ld/a/g;-><init>(Ld/a/c;Ld/a/f;)V

    iput-object v0, p0, Ld/a/e;->e:Ld/a/c;

    goto :goto_1

    .line 20
    :cond_6
    new-instance v0, Ld/a/l;

    iget-object v1, p0, Ld/a/e;->e:Ld/a/c;

    iget-object v2, p0, Ld/a/e;->b:Ljava/lang/Object;

    iget-object v3, p0, Ld/a/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ld/a/l;-><init>(Ld/a/c;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ld/a/e;->e:Ld/a/c;

    .line 21
    :goto_1
    iget-object v0, p0, Ld/a/e;->e:Ld/a/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a/e;->a:Ld/a/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ld/a/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/io/InputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Ld/a/e;->a:Ld/a/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ld/a/f;->a()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Ld/a/e;->f()Ld/a/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    instance-of v1, v0, Ld/a/l;

    if-eqz v1, :cond_2

    .line 5
    move-object v1, v0

    check-cast v1, Ld/a/l;

    invoke-virtual {v1}, Ld/a/l;->b()Ld/a/c;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ld/a/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no object DCH for MIME type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0}, Ld/a/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/a/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    .line 9
    new-instance v2, Ljava/io/PipedInputStream;

    invoke-direct {v2, v1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 10
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ld/a/e$a;

    invoke-direct {v4, p0, v0, v1}, Ld/a/e$a;-><init>(Ld/a/e;Ld/a/c;Ljava/io/PipedOutputStream;)V

    const-string v0, "DataHandler.getInputStream"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    move-object v0, v2

    :goto_1
    return-object v0

    .line 12
    :cond_3
    new-instance v0, Ld/a/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no DCH for MIME type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p0}, Ld/a/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/a/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method
