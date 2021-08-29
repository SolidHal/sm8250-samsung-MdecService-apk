.class public interface abstract Lf/f0/i/l;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Lf/f0/i/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/f0/i/l$a;

    invoke-direct {v0}, Lf/f0/i/l$a;-><init>()V

    sput-object v0, Lf/f0/i/l;->a:Lf/f0/i/l;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lf/f0/i/c;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILf/f0/i/b;)V
.end method

.method public abstract d(ILg/e;IZ)Z
.end method
