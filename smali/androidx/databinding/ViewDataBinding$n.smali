.class Landroidx/databinding/ViewDataBinding$n;
.super Landroidx/databinding/l$a;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/l$a;",
        "Landroidx/databinding/ViewDataBinding$l<",
        "Landroidx/databinding/l;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroidx/databinding/ViewDataBinding$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$o<",
            "Landroidx/databinding/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/l$a;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$o;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$o;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$l;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$n;->a:Landroidx/databinding/ViewDataBinding$o;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/databinding/l;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$n;->f(Landroidx/databinding/l;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/databinding/l;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$n;->c(Landroidx/databinding/l;)V

    return-void
.end method

.method public c(Landroidx/databinding/l;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/l;->s(Landroidx/databinding/l$a;)V

    return-void
.end method

.method public d(Landroidx/lifecycle/j;)V
    .locals 0

    return-void
.end method

.method public e()Landroidx/databinding/ViewDataBinding$o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$o<",
            "Landroidx/databinding/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$n;->a:Landroidx/databinding/ViewDataBinding$o;

    return-object v0
.end method

.method public f(Landroidx/databinding/l;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/databinding/l;->f(Landroidx/databinding/l$a;)V

    return-void
.end method
