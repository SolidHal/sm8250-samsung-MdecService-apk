.class Lc/b/a/i/b/d$a;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/i/b/d;->a()Lc/b/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lc/b/a/i/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc/b/a/i/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/i/b/f;Lc/b/a/i/b/f;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lc/b/a/i/b/f;->d()I

    move-result p1

    invoke-virtual {p2}, Lc/b/a/i/b/f;->d()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/i/b/f;

    check-cast p2, Lc/b/a/i/b/f;

    invoke-virtual {p0, p1, p2}, Lc/b/a/i/b/d$a;->a(Lc/b/a/i/b/f;Lc/b/a/i/b/f;)I

    move-result p1

    return p1
.end method
