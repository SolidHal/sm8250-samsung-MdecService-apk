.class final Lf/f0/i/l$a;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lf/f0/i/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f0/i/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b(ILjava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public c(ILf/f0/i/b;)V
    .locals 0

    return-void
.end method

.method public d(ILg/e;IZ)Z
    .locals 0

    int-to-long p3, p3

    .line 1
    invoke-interface {p2, p3, p4}, Lg/e;->h(J)V

    const/4 p1, 0x1

    return p1
.end method
