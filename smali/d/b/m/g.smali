.class public Ld/b/m/g;
.super Ld/b/f;
.source "MimeMessage.java"

# interfaces
.implements Ld/b/m/i;


# instance fields
.field protected a:Ld/a/e;

.field protected b:[B

.field protected c:Ljava/io/InputStream;

.field protected d:Ld/b/m/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/b/m/e;

    invoke-direct {v0}, Ld/b/m/e;-><init>()V

    .line 2
    new-instance v0, Ld/b/b;

    sget-object v1, Ld/b/b$a;->b:Ld/b/b$a;

    invoke-direct {v0, v1}, Ld/b/b;-><init>(Ld/b/b$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/m/g;->g()Ld/a/e;

    move-result-object v0

    invoke-virtual {v0}, Ld/a/e;->g()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Ld/b/m/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lc/f/b/a/g;->a(Ld/b/m/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ld/b/m/f;->j(Ld/b/m/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ld/b/m/f;->i(Ld/b/m/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/g;->d:Ld/b/m/d;

    invoke-virtual {v0, p1, p2}, Ld/b/m/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f()Ljava/io/InputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Ld/b/m/g;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ld/b/m/n;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ld/b/m/n;->f(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/m/g;->b:[B

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ld/b/n/b;

    iget-object v1, p0, Ld/b/m/g;->b:[B

    invoke-direct {v0, v1}, Ld/b/n/b;-><init>([B)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ld/b/i;

    const-string v1, "No MimeMessage content"

    invoke-direct {v0, v1}, Ld/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized g()Ld/a/e;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/m/g;->a:Ld/a/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/b/m/f$a;

    invoke-direct {v0, p0}, Ld/b/m/f$a;-><init>(Ld/b/m/i;)V

    iput-object v0, p0, Ld/b/m/g;->a:Ld/a/e;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/m/g;->a:Ld/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
