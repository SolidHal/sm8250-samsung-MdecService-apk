.class public interface abstract Lf/m;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Lf/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/m$a;

    invoke-direct {v0}, Lf/m$a;-><init>()V

    sput-object v0, Lf/m;->a:Lf/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lf/s;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/s;",
            ")",
            "Ljava/util/List<",
            "Lf/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lf/s;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/s;",
            "Ljava/util/List<",
            "Lf/l;",
            ">;)V"
        }
    .end annotation
.end method
