.class Landroidx/databinding/ViewDataBinding$q;
.super Landroidx/databinding/j$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/j$a;",
        "Landroidx/databinding/ViewDataBinding$l<",
        "Landroidx/databinding/j;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroidx/databinding/ViewDataBinding$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$o<",
            "Landroidx/databinding/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/j$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$o;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$o;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$l;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/databinding/j;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$q;->h(Landroidx/databinding/j;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/databinding/j;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$q;->f(Landroidx/databinding/j;)V

    return-void
.end method

.method public d(Landroidx/lifecycle/j;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/databinding/j;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$o;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding$o;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/j;

    if-eq v1, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    iget v1, v1, Landroidx/databinding/ViewDataBinding$o;->b:I

    invoke-static {v0, v1, p1, p2}, Landroidx/databinding/ViewDataBinding;->access$800(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    return-void
.end method

.method public f(Landroidx/databinding/j;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/j;->addOnPropertyChangedCallback(Landroidx/databinding/j$a;)V

    return-void
.end method

.method public g()Landroidx/databinding/ViewDataBinding$o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$o<",
            "Landroidx/databinding/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$q;->a:Landroidx/databinding/ViewDataBinding$o;

    return-object v0
.end method

.method public h(Landroidx/databinding/j;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/j;->removeOnPropertyChangedCallback(Landroidx/databinding/j$a;)V

    return-void
.end method
