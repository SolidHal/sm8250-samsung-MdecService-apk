.class final Lf/a0$c;
.super Lf/a0;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a0;->create(Lf/u;Ljava/io/File;)Lf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/u;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lf/u;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a0$c;->a:Lf/u;

    iput-object p2, p0, Lf/a0$c;->b:Ljava/io/File;

    invoke-direct {p0}, Lf/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a0$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lf/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/a0$c;->a:Lf/u;

    return-object v0
.end method

.method public writeTo(Lg/d;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lf/a0$c;->b:Ljava/io/File;

    invoke-static {v1}, Lg/l;->f(Ljava/io/File;)Lg/s;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lg/d;->d(Lg/s;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lf/f0/c;->f(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lf/f0/c;->f(Ljava/io/Closeable;)V

    throw p1
.end method
