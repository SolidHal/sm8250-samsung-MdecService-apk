.class Landroidx/appcompat/app/AppCompatDelegateImpl$j;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lb/a/o/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field private a:Lb/a/o/b$a;

.field final synthetic b:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lb/a/o/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Lb/a/o/b$a;

    return-void
.end method


# virtual methods
.method public a(Lb/a/o/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Lb/a/o/b$a;

    invoke-interface {v0, p1, p2}, Lb/a/o/b$a;->a(Lb/a/o/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/a/o/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Lb/a/o/b$a;

    invoke-interface {v0, p1}, Lb/a/o/b$a;->b(Lb/a/o/b;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->d:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->L()V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lb/f/k/t;->b(Landroid/view/View;)Lb/f/k/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/f/k/x;->a(F)Lb/f/k/x;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Lb/f/k/x;

    .line 7
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->r:Lb/f/k/x;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$j$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$j$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$j;)V

    invoke-virtual {p1, v0}, Lb/f/k/x;->f(Lb/f/k/y;)Lb/f/k/x;

    .line 8
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->g:Landroidx/appcompat/app/e;

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Lb/a/o/b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/e;->onSupportActionModeFinished(Lb/a/o/b;)V

    .line 10
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Lb/a/o/b;

    return-void
.end method

.method public c(Lb/a/o/b;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Lb/a/o/b$a;

    invoke-interface {v0, p1, p2}, Lb/a/o/b$a;->c(Lb/a/o/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Lb/a/o/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->a:Lb/a/o/b$a;

    invoke-interface {v0, p1, p2}, Lb/a/o/b$a;->d(Lb/a/o/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
