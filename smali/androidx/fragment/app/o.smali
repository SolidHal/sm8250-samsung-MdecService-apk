.class Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/j;


# instance fields
.field private b:Landroidx/lifecycle/k;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/lifecycle/k;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/g$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/lifecycle/k;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/k;->i(Landroidx/lifecycle/g$a;)V

    return-void
.end method

.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/lifecycle/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/lifecycle/k;

    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/lifecycle/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLifecycle()Landroidx/lifecycle/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->b()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Landroidx/lifecycle/k;

    return-object v0
.end method
