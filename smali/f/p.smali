.class public abstract Lf/p;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/p$c;
    }
.end annotation


# static fields
.field public static final a:Lf/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/p$a;

    invoke-direct {v0}, Lf/p$a;-><init>()V

    sput-object v0, Lf/p;->a:Lf/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static k(Lf/p;)Lf/p$c;
    .locals 1

    .line 1
    new-instance v0, Lf/p$b;

    invoke-direct {v0, p0}, Lf/p$b;-><init>(Lf/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lf/e;)V
    .locals 0

    return-void
.end method

.method public b(Lf/e;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public c(Lf/e;)V
    .locals 0

    return-void
.end method

.method public d(Lf/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lf/x;)V
    .locals 0
    .param p4    # Lf/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public e(Lf/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lf/x;Ljava/io/IOException;)V
    .locals 0
    .param p4    # Lf/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public f(Lf/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public g(Lf/e;Lf/i;)V
    .locals 0

    return-void
.end method

.method public h(Lf/e;Lf/i;)V
    .locals 0

    return-void
.end method

.method public i(Lf/e;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/e;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public j(Lf/e;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public l(Lf/e;J)V
    .locals 0

    return-void
.end method

.method public m(Lf/e;)V
    .locals 0

    return-void
.end method

.method public n(Lf/e;Lf/z;)V
    .locals 0

    return-void
.end method

.method public o(Lf/e;)V
    .locals 0

    return-void
.end method

.method public p(Lf/e;J)V
    .locals 0

    return-void
.end method

.method public q(Lf/e;)V
    .locals 0

    return-void
.end method

.method public r(Lf/e;Lf/b0;)V
    .locals 0

    return-void
.end method

.method public s(Lf/e;)V
    .locals 0

    return-void
.end method

.method public t(Lf/e;Lf/q;)V
    .locals 0
    .param p2    # Lf/q;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public u(Lf/e;)V
    .locals 0

    return-void
.end method
