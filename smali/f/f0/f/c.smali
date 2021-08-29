.class public final Lf/f0/f/c;
.super Lf/f0/i/g$h;
.source "RealConnection.java"

# interfaces
.implements Lf/i;


# instance fields
.field private final b:Lf/j;

.field private final c:Lf/d0;

.field private d:Ljava/net/Socket;

.field private e:Ljava/net/Socket;

.field private f:Lf/q;

.field private g:Lf/x;

.field private h:Lf/f0/i/g;

.field private i:Lg/e;

.field private j:Lg/d;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lf/f0/f/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Lf/j;Lf/d0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/f0/i/g$h;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lf/f0/f/c;->m:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/f0/f/c;->n:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lf/f0/f/c;->o:J

    .line 5
    iput-object p1, p0, Lf/f0/f/c;->b:Lf/j;

    .line 6
    iput-object p2, p0, Lf/f0/f/c;->c:Lf/d0;

    return-void
.end method

.method private d(IILf/e;Lf/p;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lf/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 6
    :goto_1
    iput-object v1, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    .line 7
    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lf/p;->f(Lf/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 8
    iget-object p3, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    :try_start_0
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object p2

    iget-object p3, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    iget-object p4, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {p4}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lf/f0/j/f;->g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    iget-object p1, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lg/l;->i(Ljava/net/Socket;)Lg/s;

    move-result-object p1

    invoke-static {p1}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object p1

    iput-object p1, p0, Lf/f0/f/c;->i:Lg/e;

    .line 11
    iget-object p1, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lg/l;->e(Ljava/net/Socket;)Lg/r;

    move-result-object p1

    invoke-static {p1}, Lg/l;->a(Lg/r;)Lg/d;

    move-result-object p1

    iput-object p1, p0, Lf/f0/f/c;->j:Lg/d;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 13
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {p4}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p2
.end method

.method private e(Lf/f0/f/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->a()Lf/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lf/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    .line 4
    invoke-virtual {v0}, Lf/a;->l()Lf/s;

    move-result-object v4

    invoke-virtual {v4}, Lf/s;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lf/a;->l()Lf/s;

    move-result-object v5

    invoke-virtual {v5}, Lf/s;->w()I

    move-result v5

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p1, v1}, Lf/f0/f/b;->a(Ljavax/net/ssl/SSLSocket;)Lf/k;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lf/k;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lf/a;->l()Lf/s;

    move-result-object v4

    invoke-virtual {v4}, Lf/s;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lf/a;->f()Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-virtual {v3, v1, v4, v5}, Lf/f0/j/f;->f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 12
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 13
    invoke-direct {p0, v3}, Lf/f0/f/c;->n(Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    invoke-static {v3}, Lf/q;->b(Ljavax/net/ssl/SSLSession;)Lf/q;

    move-result-object v4

    .line 15
    invoke-virtual {v0}, Lf/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Lf/a;->l()Lf/s;

    move-result-object v6

    invoke-virtual {v6}, Lf/s;->k()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v0}, Lf/a;->a()Lf/g;

    move-result-object v3

    invoke-virtual {v0}, Lf/a;->l()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->k()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v4}, Lf/q;->c()Ljava/util/List;

    move-result-object v5

    .line 18
    invoke-virtual {v3, v0, v5}, Lf/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 19
    invoke-virtual {p1}, Lf/k;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lf/f0/j/f;->k(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_1
    iput-object v1, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    .line 22
    invoke-static {v1}, Lg/l;->i(Ljava/net/Socket;)Lg/s;

    move-result-object p1

    invoke-static {p1}, Lg/l;->b(Lg/s;)Lg/e;

    move-result-object p1

    iput-object p1, p0, Lf/f0/f/c;->i:Lg/e;

    .line 23
    iget-object p1, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-static {p1}, Lg/l;->e(Ljava/net/Socket;)Lg/r;

    move-result-object p1

    invoke-static {p1}, Lg/l;->a(Lg/r;)Lg/d;

    move-result-object p1

    iput-object p1, p0, Lf/f0/f/c;->j:Lg/d;

    .line 24
    iput-object v4, p0, Lf/f0/f/c;->f:Lf/q;

    if-eqz v2, :cond_2

    .line 25
    invoke-static {v2}, Lf/x;->a(Ljava/lang/String;)Lf/x;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_2
    sget-object p1, Lf/x;->d:Lf/x;

    :goto_0
    iput-object p1, p0, Lf/f0/f/c;->g:Lf/x;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 27
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lf/f0/j/f;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_3
    return-void

    .line 28
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Lf/q;->c()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 29
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lf/a;->l()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {p1}, Lf/g;->c(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {p1}, Lf/f0/l/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "a valid ssl session was not established"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 34
    :goto_1
    :try_start_3
    invoke-static {p1}, Lf/f0/c;->y(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 35
    :cond_6
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_7

    .line 36
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lf/f0/j/f;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 37
    :cond_7
    invoke-static {v2}, Lf/f0/c;->g(Ljava/net/Socket;)V

    throw p1
.end method

.method private f(IIILf/e;Lf/p;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lf/f0/f/c;->h()Lf/z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lf/z;->h()Lf/s;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 3
    invoke-direct {p0, p1, p2, p4, p5}, Lf/f0/f/c;->d(IILf/e;Lf/p;)V

    .line 4
    invoke-direct {p0, p2, p3, v0, v1}, Lf/f0/f/c;->g(IILf/z;Lf/s;)Lf/z;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    invoke-static {v3}, Lf/f0/c;->g(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    .line 7
    iput-object v3, p0, Lf/f0/f/c;->j:Lg/d;

    .line 8
    iput-object v3, p0, Lf/f0/f/c;->i:Lg/e;

    .line 9
    iget-object v4, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v4}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v5}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lf/p;->d(Lf/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lf/x;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private g(IILf/z;Lf/s;)Lf/z;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lf/f0/c;->r(Lf/s;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    :goto_0
    new-instance v0, Lf/f0/h/a;

    iget-object v1, p0, Lf/f0/f/c;->i:Lg/e;

    iget-object v2, p0, Lf/f0/f/c;->j:Lg/d;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lf/f0/h/a;-><init>(Lf/w;Lf/f0/f/g;Lg/e;Lg/d;)V

    .line 3
    iget-object v1, p0, Lf/f0/f/c;->i:Lg/e;

    invoke-interface {v1}, Lg/s;->timeout()Lg/t;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lg/t;->g(JLjava/util/concurrent/TimeUnit;)Lg/t;

    .line 4
    iget-object v1, p0, Lf/f0/f/c;->j:Lg/d;

    invoke-interface {v1}, Lg/r;->timeout()Lg/t;

    move-result-object v1

    int-to-long v4, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lg/t;->g(JLjava/util/concurrent/TimeUnit;)Lg/t;

    .line 5
    invoke-virtual {p3}, Lf/z;->d()Lf/r;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lf/f0/h/a;->o(Lf/r;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lf/f0/h/a;->a()V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lf/f0/h/a;->f(Z)Lf/b0$a;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p3}, Lf/b0$a;->o(Lf/z;)Lf/b0$a;

    .line 9
    invoke-virtual {v1}, Lf/b0$a;->c()Lf/b0;

    move-result-object p3

    .line 10
    invoke-static {p3}, Lf/f0/g/e;->b(Lf/b0;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    const-wide/16 v1, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0, v1, v2}, Lf/f0/h/a;->k(J)Lg/s;

    move-result-object v0

    const v1, 0x7fffffff

    .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lf/f0/c;->A(Lg/s;ILjava/util/concurrent/TimeUnit;)Z

    .line 13
    invoke-interface {v0}, Lg/s;->close()V

    .line 14
    invoke-virtual {p3}, Lf/b0;->s()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 15
    iget-object v0, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->a()Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->h()Lf/b;

    move-result-object v0

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-interface {v0, v1, p3}, Lf/b;->a(Lf/d0;Lf/b0;)Lf/z;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    .line 16
    invoke-virtual {p3, v1}, Lf/b0;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto/16 :goto_0

    .line 17
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p3}, Lf/b0;->s()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    iget-object p1, p0, Lf/f0/f/c;->i:Lg/e;

    invoke-interface {p1}, Lg/e;->a()Lg/c;

    move-result-object p1

    invoke-virtual {p1}, Lg/c;->q()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lf/f0/f/c;->j:Lg/d;

    invoke-interface {p1}, Lg/d;->a()Lg/c;

    move-result-object p1

    invoke-virtual {p1}, Lg/c;->q()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 21
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h()Lf/z;
    .locals 3

    .line 1
    new-instance v0, Lf/z$a;

    invoke-direct {v0}, Lf/z$a;-><init>()V

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    .line 2
    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->l()Lf/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/z$a;->h(Lf/s;)Lf/z$a;

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    .line 3
    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->l()Lf/s;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lf/f0/c;->r(Lf/s;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lf/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 4
    invoke-virtual {v0, v1, v2}, Lf/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    .line 5
    invoke-static {}, Lf/f0/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lf/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    .line 6
    invoke-virtual {v0}, Lf/z$a;->b()Lf/z;

    move-result-object v0

    return-object v0
.end method

.method private i(Lf/f0/f/b;ILf/e;Lf/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->a()Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lf/x;->d:Lf/x;

    iput-object p1, p0, Lf/f0/f/c;->g:Lf/x;

    .line 3
    iget-object p1, p0, Lf/f0/f/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p4, p3}, Lf/p;->u(Lf/e;)V

    .line 5
    invoke-direct {p0, p1}, Lf/f0/f/c;->e(Lf/f0/f/b;)V

    .line 6
    iget-object p1, p0, Lf/f0/f/c;->f:Lf/q;

    invoke-virtual {p4, p3, p1}, Lf/p;->t(Lf/e;Lf/q;)V

    .line 7
    iget-object p1, p0, Lf/f0/f/c;->g:Lf/x;

    sget-object p3, Lf/x;->f:Lf/x;

    if-ne p1, p3, :cond_1

    .line 8
    iget-object p1, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    new-instance p1, Lf/f0/i/g$g;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lf/f0/i/g$g;-><init>(Z)V

    iget-object p3, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    iget-object p4, p0, Lf/f0/f/c;->c:Lf/d0;

    .line 10
    invoke-virtual {p4}, Lf/d0;->a()Lf/a;

    move-result-object p4

    invoke-virtual {p4}, Lf/a;->l()Lf/s;

    move-result-object p4

    invoke-virtual {p4}, Lf/s;->k()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lf/f0/f/c;->i:Lg/e;

    iget-object v1, p0, Lf/f0/f/c;->j:Lg/d;

    invoke-virtual {p1, p3, p4, v0, v1}, Lf/f0/i/g$g;->d(Ljava/net/Socket;Ljava/lang/String;Lg/e;Lg/d;)Lf/f0/i/g$g;

    .line 11
    invoke-virtual {p1, p0}, Lf/f0/i/g$g;->b(Lf/f0/i/g$h;)Lf/f0/i/g$g;

    .line 12
    invoke-virtual {p1, p2}, Lf/f0/i/g$g;->c(I)Lf/f0/i/g$g;

    .line 13
    invoke-virtual {p1}, Lf/f0/i/g$g;->a()Lf/f0/i/g;

    move-result-object p1

    iput-object p1, p0, Lf/f0/f/c;->h:Lf/f0/i/g;

    .line 14
    invoke-virtual {p1}, Lf/f0/i/g;->a0()V

    :cond_1
    return-void
.end method

.method private n(Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSL_NULL_WITH_NULL_NULL"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lf/f0/i/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->b:Lf/j;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lf/f0/i/g;->Q()I

    move-result p1

    iput p1, p0, Lf/f0/f/c;->m:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lf/f0/i/i;)V
    .locals 1

    .line 1
    sget-object v0, Lf/f0/i/b;->g:Lf/f0/i/b;

    invoke-virtual {p1, v0}, Lf/f0/i/i;->d(Lf/f0/i/b;)V

    return-void
.end method

.method public c(IIIIZLf/e;Lf/p;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    iget-object v0, v7, Lf/f0/f/c;->g:Lf/x;

    if-nez v0, :cond_a

    .line 2
    iget-object v0, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->a()Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v10, Lf/f0/f/b;

    invoke-direct {v10, v0}, Lf/f0/f/b;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v1, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    sget-object v1, Lf/k;->g:Lf/k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->a()Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->l()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->k()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/f0/j/f;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lf/f0/f/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lf/f0/f/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 9
    :cond_1
    new-instance v0, Lf/f0/f/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lf/f0/f/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 10
    :goto_1
    :try_start_0
    iget-object v0, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 11
    invoke-direct/range {v1 .. v6}, Lf/f0/f/c;->f(IIILf/e;Lf/p;)V

    .line 12
    iget-object v0, v7, Lf/f0/f/c;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    .line 13
    :try_start_1
    invoke-direct {v7, v13, v14, v8, v9}, Lf/f0/f/c;->d(IILf/e;Lf/p;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v15, p4

    .line 14
    :try_start_2
    invoke-direct {v7, v10, v15, v8, v9}, Lf/f0/f/c;->i(Lf/f0/f/b;ILf/e;Lf/p;)V

    .line 15
    iget-object v0, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lf/f0/f/c;->g:Lf/x;

    invoke-virtual {v9, v8, v0, v1, v2}, Lf/p;->d(Lf/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lf/x;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    :goto_3
    iget-object v0, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lf/f0/f/c;->d:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v1, Lf/f0/f/e;

    invoke-direct {v1, v0}, Lf/f0/f/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 19
    :cond_6
    :goto_4
    iget-object v0, v7, Lf/f0/f/c;->h:Lf/f0/i/g;

    if-eqz v0, :cond_7

    .line 20
    iget-object v1, v7, Lf/f0/f/c;->b:Lf/j;

    monitor-enter v1

    .line 21
    :try_start_3
    iget-object v0, v7, Lf/f0/f/c;->h:Lf/f0/i/g;

    invoke-virtual {v0}, Lf/f0/i/g;->Q()I

    move-result v0

    iput v0, v7, Lf/f0/f/c;->m:I

    .line 22
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_6
    move/from16 v15, p4

    .line 23
    :goto_7
    iget-object v1, v7, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-static {v1}, Lf/f0/c;->g(Ljava/net/Socket;)V

    .line 24
    iget-object v1, v7, Lf/f0/f/c;->d:Ljava/net/Socket;

    invoke-static {v1}, Lf/f0/c;->g(Ljava/net/Socket;)V

    .line 25
    iput-object v11, v7, Lf/f0/f/c;->e:Ljava/net/Socket;

    .line 26
    iput-object v11, v7, Lf/f0/f/c;->d:Ljava/net/Socket;

    .line 27
    iput-object v11, v7, Lf/f0/f/c;->i:Lg/e;

    .line 28
    iput-object v11, v7, Lf/f0/f/c;->j:Lg/d;

    .line 29
    iput-object v11, v7, Lf/f0/f/c;->f:Lf/q;

    .line 30
    iput-object v11, v7, Lf/f0/f/c;->g:Lf/x;

    .line 31
    iput-object v11, v7, Lf/f0/f/c;->h:Lf/f0/i/g;

    .line 32
    iget-object v1, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lf/p;->e(Lf/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lf/x;Ljava/io/IOException;)V

    if-nez v12, :cond_8

    .line 33
    new-instance v12, Lf/f0/f/e;

    invoke-direct {v12, v0}, Lf/f0/f/e;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 34
    :cond_8
    invoke-virtual {v12, v0}, Lf/f0/f/e;->a(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_9

    .line 35
    invoke-virtual {v10, v0}, Lf/f0/f/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 36
    :cond_9
    throw v12

    .line 37
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Lf/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->f:Lf/q;

    return-object v0
.end method

.method public k(Lf/a;Lf/d0;)Z
    .locals 4
    .param p2    # Lf/d0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lf/f0/f/c;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lf/f0/f/c;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lf/f0/a;->a:Lf/f0/a;

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/f0/a;->g(Lf/a;Lf/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lf/a;->l()Lf/s;

    move-result-object v0

    invoke-virtual {v0}, Lf/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lf/f0/f/c;->p()Lf/d0;

    move-result-object v1

    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->l()Lf/s;

    move-result-object v1

    invoke-virtual {v1}, Lf/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lf/f0/f/c;->h:Lf/f0/i/g;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 5
    :cond_4
    invoke-virtual {p2}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v0, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 7
    :cond_6
    iget-object v0, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v0}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 8
    :cond_7
    invoke-virtual {p2}, Lf/d0;->a()Lf/a;

    move-result-object p2

    invoke-virtual {p2}, Lf/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lf/f0/l/d;->a:Lf/f0/l/d;

    if-eq p2, v0, :cond_8

    return v2

    .line 9
    :cond_8
    invoke-virtual {p1}, Lf/a;->l()Lf/s;

    move-result-object p2

    invoke-virtual {p0, p2}, Lf/f0/f/c;->r(Lf/s;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 10
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lf/a;->a()Lf/g;

    move-result-object p2

    invoke-virtual {p1}, Lf/a;->l()Lf/s;

    move-result-object p1

    invoke-virtual {p1}, Lf/s;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lf/f0/f/c;->j()Lf/q;

    move-result-object v0

    invoke-virtual {v0}, Lf/q;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lf/g;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public l(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/f0/f/c;->h:Lf/f0/i/g;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lf/f0/i/g;->P()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    :try_start_0
    iget-object p1, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    iget-object v0, p0, Lf/f0/f/c;->i:Lg/e;

    invoke-interface {v0}, Lg/e;->q()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 7
    :try_start_2
    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->h:Lf/f0/i/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Lf/w;Lf/t$a;Lf/f0/f/g;)Lf/f0/g/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->h:Lf/f0/i/g;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lf/f0/i/f;

    iget-object v1, p0, Lf/f0/f/c;->h:Lf/f0/i/g;

    invoke-direct {v0, p1, p2, p3, v1}, Lf/f0/i/f;-><init>(Lf/w;Lf/t$a;Lf/f0/f/g;Lf/f0/i/g;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    invoke-interface {p2}, Lf/t$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    iget-object v0, p0, Lf/f0/f/c;->i:Lg/e;

    invoke-interface {v0}, Lg/s;->timeout()Lg/t;

    move-result-object v0

    invoke-interface {p2}, Lf/t$a;->b()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lg/t;->g(JLjava/util/concurrent/TimeUnit;)Lg/t;

    .line 5
    iget-object v0, p0, Lf/f0/f/c;->j:Lg/d;

    invoke-interface {v0}, Lg/r;->timeout()Lg/t;

    move-result-object v0

    invoke-interface {p2}, Lf/t$a;->c()I

    move-result p2

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Lg/t;->g(JLjava/util/concurrent/TimeUnit;)Lg/t;

    .line 6
    new-instance p2, Lf/f0/h/a;

    iget-object v0, p0, Lf/f0/f/c;->i:Lg/e;

    iget-object v1, p0, Lf/f0/f/c;->j:Lg/d;

    invoke-direct {p2, p1, p3, v0, v1}, Lf/f0/h/a;-><init>(Lf/w;Lf/f0/f/g;Lg/e;Lg/d;)V

    return-object p2
.end method

.method public p()Lf/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->c:Lf/d0;

    return-object v0
.end method

.method public q()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f0/f/c;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public r(Lf/s;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lf/s;->w()I

    move-result v0

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->l()Lf/s;

    move-result-object v1

    invoke-virtual {v1}, Lf/s;->w()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lf/s;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->l()Lf/s;

    move-result-object v1

    invoke-virtual {v1}, Lf/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lf/f0/f/c;->f:Lf/q;

    if-eqz v0, :cond_1

    sget-object v0, Lf/f0/l/d;->a:Lf/f0/l/d;

    .line 4
    invoke-virtual {p1}, Lf/s;->k()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lf/f0/f/c;->f:Lf/q;

    invoke-virtual {v3}, Lf/q;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 5
    invoke-virtual {v0, p1, v3}, Lf/f0/l/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    .line 2
    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->l()Lf/s;

    move-result-object v1

    invoke-virtual {v1}, Lf/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    invoke-virtual {v1}, Lf/d0;->a()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->l()Lf/s;

    move-result-object v1

    invoke-virtual {v1}, Lf/s;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    .line 3
    invoke-virtual {v1}, Lf/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/f0/f/c;->c:Lf/d0;

    .line 4
    invoke-virtual {v1}, Lf/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/f0/f/c;->f:Lf/q;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lf/q;->a()Lf/h;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/f0/f/c;->g:Lf/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
