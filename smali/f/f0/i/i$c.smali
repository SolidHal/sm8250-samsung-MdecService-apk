.class Lf/f0/i/i$c;
.super Lg/a;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f0/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic k:Lf/f0/i/i;


# direct methods
.method constructor <init>(Lf/f0/i/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/f0/i/i$c;->k:Lf/f0/i/i;

    invoke-direct {p0}, Lg/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected o(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f0/i/i$c;->k:Lf/f0/i/i;

    sget-object v1, Lf/f0/i/b;->h:Lf/f0/i/b;

    invoke-virtual {v0, v1}, Lf/f0/i/i;->f(Lf/f0/i/b;)V

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/f0/i/i$c;->o(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
