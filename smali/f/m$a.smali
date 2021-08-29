.class final Lf/m$a;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lf/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/m;
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
.method public a(Lf/s;)Ljava/util/List;
    .locals 0
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

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Lf/s;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/s;",
            "Ljava/util/List<",
            "Lf/l;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
