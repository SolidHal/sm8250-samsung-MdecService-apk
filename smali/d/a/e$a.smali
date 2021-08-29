.class Ld/a/e$a;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/e;->g()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ld/a/c;

.field final synthetic c:Ljava/io/PipedOutputStream;

.field final synthetic d:Ld/a/e;


# direct methods
.method constructor <init>(Ld/a/e;Ld/a/c;Ljava/io/PipedOutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/a/e$a;->d:Ld/a/e;

    iput-object p2, p0, Ld/a/e$a;->b:Ld/a/c;

    iput-object p3, p0, Ld/a/e$a;->c:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/a/e$a;->b:Ld/a/c;

    iget-object v1, p0, Ld/a/e$a;->d:Ld/a/e;

    invoke-static {v1}, Ld/a/e;->a(Ld/a/e;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ld/a/e$a;->d:Ld/a/e;

    invoke-static {v2}, Ld/a/e;->b(Ld/a/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ld/a/e$a;->c:Ljava/io/PipedOutputStream;

    invoke-interface {v0, v1, v2, v3}, Ld/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catch_0
    :try_start_1
    iget-object v0, p0, Ld/a/e$a;->c:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Ld/a/e$a;->c:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3
    :catch_1
    throw v0

    :catch_2
    :goto_0
    return-void
.end method
