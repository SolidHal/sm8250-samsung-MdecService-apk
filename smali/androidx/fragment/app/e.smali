.class public Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final a:Landroidx/fragment/app/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    return-void
.end method

.method public static b(Landroidx/fragment/app/g;)Landroidx/fragment/app/e;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/g<",
            "*>;)",
            "Landroidx/fragment/app/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/fragment/app/e;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Lb/f/j/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/g;

    invoke-direct {v0, p0}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/g;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v1, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/i;->p(Landroidx/fragment/app/g;Landroidx/fragment/app/d;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->x()V

    return-void
.end method

.method public d(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->y(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->z(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->A()V

    return-void
.end method

.method public g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/i;->B(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->C()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->E()V

    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->F(Z)V

    return-void
.end method

.method public k(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->U(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public l(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->V(Landroid/view/Menu;)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->W()V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->X(Z)V

    return-void
.end method

.method public o(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->Y(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->Z()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a0()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->c0()V

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->i0()Z

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->o0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public u()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->N0()V

    return-void
.end method

.method public w(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/i;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    instance-of v1, v0, Landroidx/lifecycle/x;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->X0(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/g;

    iget-object v0, v0, Landroidx/fragment/app/g;->f:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->Z0()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
