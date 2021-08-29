.class public Lf/w;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/w$b;
    }
.end annotation


# static fields
.field static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/x;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final b:Lf/n;

.field final c:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/x;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/k;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/t;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/t;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lf/p$c;

.field final i:Ljava/net/ProxySelector;

.field final j:Lf/m;

.field final k:Lf/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final l:Lf/f0/e/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final m:Ljavax/net/SocketFactory;

.field final n:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final o:Lf/f0/l/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final p:Ljavax/net/ssl/HostnameVerifier;

.field final q:Lf/g;

.field final r:Lf/b;

.field final s:Lf/b;

.field final t:Lf/j;

.field final u:Lf/o;

.field final v:Z

.field final w:Z

.field final x:Z

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lf/x;

    .line 1
    sget-object v2, Lf/x;->f:Lf/x;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lf/x;->d:Lf/x;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lf/f0/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lf/w;->C:Ljava/util/List;

    new-array v0, v0, [Lf/k;

    .line 2
    sget-object v1, Lf/k;->f:Lf/k;

    aput-object v1, v0, v3

    sget-object v1, Lf/k;->g:Lf/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lf/f0/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf/w;->D:Ljava/util/List;

    .line 3
    new-instance v0, Lf/w$a;

    invoke-direct {v0}, Lf/w$a;-><init>()V

    sput-object v0, Lf/f0/a;->a:Lf/f0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lf/w$b;

    invoke-direct {v0}, Lf/w$b;-><init>()V

    invoke-direct {p0, v0}, Lf/w;-><init>(Lf/w$b;)V

    return-void
.end method

.method constructor <init>(Lf/w$b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lf/w$b;->a:Lf/n;

    iput-object v0, p0, Lf/w;->b:Lf/n;

    .line 4
    iget-object v0, p1, Lf/w$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lf/w;->c:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lf/w$b;->c:Ljava/util/List;

    iput-object v0, p0, Lf/w;->d:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lf/w$b;->d:Ljava/util/List;

    iput-object v0, p0, Lf/w;->e:Ljava/util/List;

    .line 7
    iget-object v0, p1, Lf/w$b;->e:Ljava/util/List;

    invoke-static {v0}, Lf/f0/c;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/w;->f:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lf/w$b;->f:Ljava/util/List;

    invoke-static {v0}, Lf/f0/c;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/w;->g:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lf/w$b;->g:Lf/p$c;

    iput-object v0, p0, Lf/w;->h:Lf/p$c;

    .line 10
    iget-object v0, p1, Lf/w$b;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lf/w;->i:Ljava/net/ProxySelector;

    .line 11
    iget-object v0, p1, Lf/w$b;->i:Lf/m;

    iput-object v0, p0, Lf/w;->j:Lf/m;

    .line 12
    iget-object v0, p1, Lf/w$b;->j:Lf/c;

    iput-object v0, p0, Lf/w;->k:Lf/c;

    .line 13
    iget-object v0, p1, Lf/w$b;->k:Lf/f0/e/d;

    iput-object v0, p0, Lf/w;->l:Lf/f0/e/d;

    .line 14
    iget-object v0, p1, Lf/w$b;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lf/w;->m:Ljavax/net/SocketFactory;

    .line 15
    iget-object v0, p0, Lf/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/k;

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {v3}, Lf/k;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p1, Lf/w$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-direct {p0}, Lf/w;->B()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lf/w;->A(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lf/w;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 20
    invoke-static {v0}, Lf/f0/l/c;->b(Ljavax/net/ssl/X509TrustManager;)Lf/f0/l/c;

    move-result-object v0

    iput-object v0, p0, Lf/w;->o:Lf/f0/l/c;

    goto :goto_2

    .line 21
    :cond_4
    :goto_1
    iget-object v0, p1, Lf/w$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lf/w;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 22
    iget-object v0, p1, Lf/w$b;->n:Lf/f0/l/c;

    iput-object v0, p0, Lf/w;->o:Lf/f0/l/c;

    .line 23
    :goto_2
    iget-object v0, p1, Lf/w$b;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lf/w;->p:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    iget-object v0, p1, Lf/w$b;->p:Lf/g;

    iget-object v1, p0, Lf/w;->o:Lf/f0/l/c;

    invoke-virtual {v0, v1}, Lf/g;->f(Lf/f0/l/c;)Lf/g;

    move-result-object v0

    iput-object v0, p0, Lf/w;->q:Lf/g;

    .line 25
    iget-object v0, p1, Lf/w$b;->q:Lf/b;

    iput-object v0, p0, Lf/w;->r:Lf/b;

    .line 26
    iget-object v0, p1, Lf/w$b;->r:Lf/b;

    iput-object v0, p0, Lf/w;->s:Lf/b;

    .line 27
    iget-object v0, p1, Lf/w$b;->s:Lf/j;

    iput-object v0, p0, Lf/w;->t:Lf/j;

    .line 28
    iget-object v0, p1, Lf/w$b;->t:Lf/o;

    iput-object v0, p0, Lf/w;->u:Lf/o;

    .line 29
    iget-boolean v0, p1, Lf/w$b;->u:Z

    iput-boolean v0, p0, Lf/w;->v:Z

    .line 30
    iget-boolean v0, p1, Lf/w$b;->v:Z

    iput-boolean v0, p0, Lf/w;->w:Z

    .line 31
    iget-boolean v0, p1, Lf/w$b;->w:Z

    iput-boolean v0, p0, Lf/w;->x:Z

    .line 32
    iget v0, p1, Lf/w$b;->x:I

    iput v0, p0, Lf/w;->y:I

    .line 33
    iget v0, p1, Lf/w$b;->y:I

    iput v0, p0, Lf/w;->z:I

    .line 34
    iget v0, p1, Lf/w$b;->z:I

    iput v0, p0, Lf/w;->A:I

    .line 35
    iget p1, p1, Lf/w$b;->A:I

    iput p1, p0, Lf/w;->B:I

    .line 36
    iget-object p1, p0, Lf/w;->f:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 37
    iget-object p1, p0, Lf/w;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 38
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/w;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/w;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lf/f0/j/f;->j()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "No System TLS"

    .line 4
    invoke-static {v0, p1}, Lf/f0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private B()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 6
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "No System TLS"

    .line 9
    invoke-static {v1, v0}, Lf/f0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lf/w;->A:I

    return v0
.end method

.method public a()Lf/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->s:Lf/b;

    return-object v0
.end method

.method public b()Lf/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->q:Lf/g;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lf/w;->y:I

    return v0
.end method

.method public d()Lf/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->t:Lf/j;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/w;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Lf/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->j:Lf/m;

    return-object v0
.end method

.method public g()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->b:Lf/n;

    return-object v0
.end method

.method public h()Lf/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->u:Lf/o;

    return-object v0
.end method

.method public i()Lf/p$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->h:Lf/p$c;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/w;->w:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/w;->v:Z

    return v0
.end method

.method public l()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->p:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/w;->f:Ljava/util/List;

    return-object v0
.end method

.method o()Lf/f0/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->k:Lf/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf/c;->b:Lf/f0/e/d;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/w;->l:Lf/f0/e/d;

    :goto_0
    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/w;->g:Ljava/util/List;

    return-object v0
.end method

.method public q(Lf/z;)Lf/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lf/y;->f(Lf/w;Lf/z;Z)Lf/y;

    move-result-object p1

    return-object p1
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lf/w;->B:I

    return v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/w;->d:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->c:Ljava/net/Proxy;

    return-object v0
.end method

.method public u()Lf/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->r:Lf/b;

    return-object v0
.end method

.method public v()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->i:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lf/w;->z:I

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/w;->x:Z

    return v0
.end method

.method public y()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->m:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public z()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
