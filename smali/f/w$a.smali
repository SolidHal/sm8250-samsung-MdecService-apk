.class final Lf/w$a;
.super Lf/f0/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/f0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/r$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lf/r$a;->b(Ljava/lang/String;)Lf/r$a;

    return-void
.end method

.method public b(Lf/r$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lf/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lf/r$a;

    return-void
.end method

.method public c(Lf/k;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lf/k;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public d(Lf/b0$a;)I
    .locals 0

    .line 1
    iget p1, p1, Lf/b0$a;->c:I

    return p1
.end method

.method public e(Lf/j;Lf/f0/f/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lf/j;->b(Lf/f0/f/c;)Z

    move-result p1

    return p1
.end method

.method public f(Lf/j;Lf/a;Lf/f0/f/g;)Ljava/net/Socket;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lf/j;->c(Lf/a;Lf/f0/f/g;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public g(Lf/a;Lf/a;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lf/a;->d(Lf/a;)Z

    move-result p1

    return p1
.end method

.method public h(Lf/j;Lf/a;Lf/f0/f/g;Lf/d0;)Lf/f0/f/c;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Lf/j;->d(Lf/a;Lf/f0/f/g;Lf/d0;)Lf/f0/f/c;

    move-result-object p1

    return-object p1
.end method

.method public i(Lf/j;Lf/f0/f/c;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lf/j;->f(Lf/f0/f/c;)V

    return-void
.end method

.method public j(Lf/j;)Lf/f0/f/d;
    .locals 0

    .line 1
    iget-object p1, p1, Lf/j;->e:Lf/f0/f/d;

    return-object p1
.end method
