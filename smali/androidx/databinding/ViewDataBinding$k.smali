.class Landroidx/databinding/ViewDataBinding$k;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/lifecycle/p;
.implements Landroidx/databinding/ViewDataBinding$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/p;",
        "Landroidx/databinding/ViewDataBinding$l<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Landroidx/databinding/ViewDataBinding$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$o<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field

.field b:Landroidx/lifecycle/j;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$o;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$o;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$l;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->f(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$k;->c(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public c(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->b:Landroidx/lifecycle/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    :cond_0
    return-void
.end method

.method public d(Landroidx/lifecycle/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$o;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$k;->b:Landroidx/lifecycle/j;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    :cond_1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$k;->b:Landroidx/lifecycle/j;

    return-void
.end method

.method public e()Landroidx/databinding/ViewDataBinding$o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$o<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    return-object v0
.end method

.method public f(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding$o;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$k;->a:Landroidx/databinding/ViewDataBinding$o;

    iget v1, v0, Landroidx/databinding/ViewDataBinding$o;->b:I

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$o;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->access$800(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method
