.class public abstract Landroidx/recyclerview/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$w$c;,
        Landroidx/recyclerview/widget/RecyclerView$w$a;,
        Landroidx/recyclerview/widget/RecyclerView$w$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$w$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$w$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView$w$b;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Ljava/util/ArrayList;

    .line 4
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroid/view/View;

    return-void
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView$r0;)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$r0;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r0;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r0;->getOldPosition()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r0;->getAdapterPosition()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)Z
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)Z
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)Z
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)Z
.end method

.method public abstract f(Landroidx/recyclerview/widget/RecyclerView$r0;)Z
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$r0;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$r0;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$w;->f(Landroidx/recyclerview/widget/RecyclerView$r0;)Z

    move-result p1

    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$r0;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$w;->o(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView$w$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$w$b;->a(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w$a;

    invoke-interface {v2}, Landroidx/recyclerview/widget/RecyclerView$w$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract j(Landroidx/recyclerview/widget/RecyclerView$r0;)V
.end method

.method public abstract k()V
.end method

.method public l()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroid/view/View;

    return-object v0
.end method

.method public abstract m()Z
.end method

.method public n()Landroidx/recyclerview/widget/RecyclerView$w$c;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$w$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$w$c;-><init>()V

    return-object v0
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView$r0;)V
    .locals 0

    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$o0;Landroidx/recyclerview/widget/RecyclerView$r0;)Landroidx/recyclerview/widget/RecyclerView$w$c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->n()Landroidx/recyclerview/widget/RecyclerView$w$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$w$c;->a(Landroidx/recyclerview/widget/RecyclerView$r0;)Landroidx/recyclerview/widget/RecyclerView$w$c;

    return-object p1
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$o0;Landroidx/recyclerview/widget/RecyclerView$r0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$w$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$o0;",
            "Landroidx/recyclerview/widget/RecyclerView$r0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$w$c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->n()Landroidx/recyclerview/widget/RecyclerView$w$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$w$c;->a(Landroidx/recyclerview/widget/RecyclerView$r0;)Landroidx/recyclerview/widget/RecyclerView$w$c;

    return-object p1
.end method

.method public abstract r()V
.end method

.method public s(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroid/view/View;

    return-void
.end method

.method t(Landroidx/recyclerview/widget/RecyclerView$w$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView$w$b;

    return-void
.end method
