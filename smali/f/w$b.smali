.class public final Lf/w$b;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field a:Lf/n;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/x;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/t;",
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

.field g:Lf/p$c;

.field h:Ljava/net/ProxySelector;

.field i:Lf/m;

.field j:Lf/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Lf/f0/e/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Lf/f0/l/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Lf/g;

.field q:Lf/b;

.field r:Lf/b;

.field s:Lf/j;

.field t:Lf/o;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/w$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/w$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lf/n;

    invoke-direct {v0}, Lf/n;-><init>()V

    iput-object v0, p0, Lf/w$b;->a:Lf/n;

    .line 5
    sget-object v0, Lf/w;->C:Ljava/util/List;

    iput-object v0, p0, Lf/w$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lf/w;->D:Ljava/util/List;

    iput-object v0, p0, Lf/w$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lf/p;->a:Lf/p;

    invoke-static {v0}, Lf/p;->k(Lf/p;)Lf/p$c;

    move-result-object v0

    iput-object v0, p0, Lf/w$b;->g:Lf/p$c;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lf/w$b;->h:Ljava/net/ProxySelector;

    .line 9
    sget-object v0, Lf/m;->a:Lf/m;

    iput-object v0, p0, Lf/w$b;->i:Lf/m;

    .line 10
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lf/w$b;->l:Ljavax/net/SocketFactory;

    .line 11
    sget-object v0, Lf/f0/l/d;->a:Lf/f0/l/d;

    iput-object v0, p0, Lf/w$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 12
    sget-object v0, Lf/g;->c:Lf/g;

    iput-object v0, p0, Lf/w$b;->p:Lf/g;

    .line 13
    sget-object v0, Lf/b;->a:Lf/b;

    iput-object v0, p0, Lf/w$b;->q:Lf/b;

    .line 14
    iput-object v0, p0, Lf/w$b;->r:Lf/b;

    .line 15
    new-instance v0, Lf/j;

    invoke-direct {v0}, Lf/j;-><init>()V

    iput-object v0, p0, Lf/w$b;->s:Lf/j;

    .line 16
    sget-object v0, Lf/o;->a:Lf/o;

    iput-object v0, p0, Lf/w$b;->t:Lf/o;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lf/w$b;->u:Z

    .line 18
    iput-boolean v0, p0, Lf/w$b;->v:Z

    .line 19
    iput-boolean v0, p0, Lf/w$b;->w:Z

    const/16 v0, 0x2710

    .line 20
    iput v0, p0, Lf/w$b;->x:I

    .line 21
    iput v0, p0, Lf/w$b;->y:I

    .line 22
    iput v0, p0, Lf/w$b;->z:I

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lf/w$b;->A:I

    return-void
.end method


# virtual methods
.method public a(Lf/t;)Lf/w$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lf/w$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lf/t;)Lf/w$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lf/w$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lf/w;
    .locals 1

    .line 1
    new-instance v0, Lf/w;

    invoke-direct {v0, p0}, Lf/w;-><init>(Lf/w$b;)V

    return-object v0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Lf/w$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lf/f0/c;->d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lf/w$b;->x:I

    return-object p0
.end method

.method public e(JLjava/util/concurrent/TimeUnit;)Lf/w$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lf/f0/c;->d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lf/w$b;->y:I

    return-object p0
.end method

.method public f(Z)Lf/w$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/w$b;->w:Z

    return-object p0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lf/w$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lf/f0/c;->d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lf/w$b;->z:I

    return-object p0
.end method
