.class Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/b;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lb/f/k/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$b;,
        Landroidx/appcompat/widget/ActionMenuPresenter$c;,
        Landroidx/appcompat/widget/ActionMenuPresenter$h;,
        Landroidx/appcompat/widget/ActionMenuPresenter$a;,
        Landroidx/appcompat/widget/ActionMenuPresenter$f;,
        Landroidx/appcompat/widget/ActionMenuPresenter$g;,
        Landroidx/appcompat/widget/ActionMenuPresenter$d;,
        Landroidx/appcompat/widget/ActionMenuPresenter$e;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field A:Landroidx/appcompat/widget/ActionMenuPresenter$a;

.field B:Landroidx/appcompat/widget/ActionMenuPresenter$c;

.field private C:Landroidx/appcompat/widget/ActionMenuPresenter$b;

.field final D:Landroidx/appcompat/widget/ActionMenuPresenter$h;

.field E:I

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/CharSequence;

.field private I:Ljava/text/NumberFormat;

.field k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private final x:Landroid/util/SparseBooleanArray;

.field private y:Landroid/view/View;

.field z:Landroidx/appcompat/widget/ActionMenuPresenter$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lb/a/g;->sesl_action_menu_layout:I

    sget v1, Lb/a/g;->sesl_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$h;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$h;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:Landroidx/appcompat/widget/ActionMenuPresenter$h;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->F:Z

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->I:Ljava/text/NumberFormat;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/b;->sesl_action_bar_text_item_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:Z

    .line 7
    invoke-static {p1}, Lb/a/o/a;->b(Landroid/content/Context;)Lb/a/o/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/o/a;->g()Z

    return-void
.end method

.method static synthetic j(Landroidx/appcompat/widget/ActionMenuPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:Z

    return p0
.end method

.method static synthetic k(Landroidx/appcompat/widget/ActionMenuPresenter;)Ljava/text/NumberFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->I:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic l(Landroidx/appcompat/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->H:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic m(Landroidx/appcompat/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->H:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic n(Landroidx/appcompat/widget/ActionMenuPresenter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->F:Z

    return p0
.end method

.method static synthetic o(Landroidx/appcompat/widget/ActionMenuPresenter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->F:Z

    return p1
.end method

.method static synthetic p(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic q(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic r(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/n;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method

.method static synthetic s(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic t(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic u(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/n;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method

.method private w(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    instance-of v5, v4, Landroidx/appcompat/view/menu/n$a;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroidx/appcompat/view/menu/n$a;

    .line 5
    invoke-interface {v5}, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    invoke-static {p1}, Lb/a/o/a;->b(Landroid/content/Context;)Lb/a/o/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/o/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:I

    .line 3
    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 5
    :cond_1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz p1, :cond_2

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 8
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->onItemsChanged(Z)V

    :cond_3
    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Z

    return-void
.end method

.method public E(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public F(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/m;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Z

    return-void
.end method

.method public H()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$f;

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/ActionMenuPresenter$f;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V

    .line 4
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$f;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 6
    invoke-super {p0, v0}, Landroidx/appcompat/view/menu/b;->onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/n$a;->initialize(Landroidx/appcompat/view/menu/i;I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 4
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$b;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->d(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public f(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b;->f(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->g(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public flagActionItems()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v2

    .line 4
    :goto_0
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:I

    .line 5
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 6
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 7
    iget-object v7, v0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    const-string v1, "ActionMenuPresenter"

    const-string v3, "mMenuView is null, maybe Menu has not been initialized."

    .line 8
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    move v7, v2

    move v9, v7

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v7, v3, :cond_5

    .line 9
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/i;

    .line 10
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->q()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->p()Z

    move-result v14

    if-eqz v14, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    .line 12
    :goto_2
    iget-boolean v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Z

    if-eqz v12, :cond_4

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_4

    move v4, v2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-boolean v7, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-eqz v7, :cond_7

    if-nez v9, :cond_6

    add-int/2addr v11, v10

    if-le v11, v4, :cond_7

    :cond_6
    add-int/lit8 v4, v4, -0x1

    :cond_7
    sub-int/2addr v4, v10

    .line 14
    iget-object v7, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 16
    iget-boolean v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v9, :cond_8

    .line 17
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:I

    div-int v10, v5, v9

    .line 18
    rem-int v11, v5, v9

    .line 19
    div-int/2addr v11, v10

    add-int/2addr v9, v11

    goto :goto_3

    :cond_8
    move v9, v2

    move v10, v9

    :goto_3
    move v11, v2

    move v13, v11

    :goto_4
    if-ge v11, v3, :cond_1d

    .line 20
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/i;

    .line 21
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->q()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 22
    iget-object v15, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->f(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 23
    iget-object v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroid/view/View;

    if-nez v12, :cond_9

    .line 24
    iput-object v15, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroid/view/View;

    .line 25
    :cond_9
    iget-boolean v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v12, :cond_a

    .line 26
    invoke-static {v15, v9, v10, v6, v2}, Landroidx/appcompat/widget/ActionMenuView;->o(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v10, v12

    goto :goto_5

    .line 27
    :cond_a
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 28
    :goto_5
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v5, v12

    if-nez v13, :cond_b

    move v13, v12

    .line 29
    :cond_b
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v12

    const/4 v15, 0x1

    if-eqz v12, :cond_c

    .line 30
    invoke-virtual {v7, v12, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    :cond_c
    invoke-virtual {v14, v15}, Landroidx/appcompat/view/menu/i;->w(Z)V

    move v0, v2

    move/from16 v17, v3

    goto/16 :goto_c

    .line 32
    :cond_d
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->p()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 33
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v12

    .line 34
    invoke-virtual {v7, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v4, :cond_e

    if-eqz v15, :cond_10

    :cond_e
    if-lez v5, :cond_10

    .line 35
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v2, :cond_f

    if-lez v10, :cond_10

    :cond_f
    const/4 v2, 0x1

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    :goto_6
    move/from16 v16, v2

    if-eqz v2, :cond_16

    .line 36
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->f(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    .line 37
    iget-object v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroid/view/View;

    if-nez v3, :cond_11

    .line 38
    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroid/view/View;

    .line 39
    :cond_11
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    .line 40
    invoke-static {v2, v9, v10, v6, v3}, Landroidx/appcompat/widget/ActionMenuView;->o(Landroid/view/View;IIII)I

    move-result v18

    sub-int v10, v10, v18

    if-nez v18, :cond_13

    const/16 v16, 0x0

    goto :goto_7

    .line 41
    :cond_12
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 42
    :cond_13
    :goto_7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v5, v2

    if-nez v13, :cond_14

    move v13, v2

    :cond_14
    if-ltz v5, :cond_15

    const/4 v2, 0x1

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    :goto_8
    and-int v2, v16, v2

    goto :goto_9

    :cond_16
    move/from16 v17, v3

    :goto_9
    if-eqz v2, :cond_17

    if-eqz v12, :cond_17

    const/4 v3, 0x1

    .line 43
    invoke-virtual {v7, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b

    :cond_17
    if-eqz v15, :cond_1a

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v7, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v11, :cond_1a

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/i;

    .line 46
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v0

    if-ne v0, v12, :cond_19

    .line 47
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->n()Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v4, v4, 0x1

    :cond_18
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/i;->w(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_1a
    :goto_b
    if-eqz v2, :cond_1b

    add-int/lit8 v4, v4, -0x1

    .line 49
    :cond_1b
    invoke-virtual {v14, v2}, Landroidx/appcompat/view/menu/i;->w(Z)V

    const/4 v0, 0x0

    goto :goto_c

    :cond_1c
    move v0, v2

    move/from16 v17, v3

    .line 50
    invoke-virtual {v14, v0}, Landroidx/appcompat/view/menu/i;->w(Z)V

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move v2, v0

    move/from16 v3, v17

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method public g(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->g(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    :cond_0
    return-object p1
.end method

.method public i(ILandroidx/appcompat/view/menu/i;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->n()Z

    move-result p1

    return p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lb/a/o/a;->b(Landroid/content/Context;)Lb/a/o/a;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lb/a/o/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 8
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lb/a/o/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:I

    .line 10
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-nez v0, :cond_5

    .line 13
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 14
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 15
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:Z

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/m;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/m;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_3
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 19
    :cond_4
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 20
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {v2, v0, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 21
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 22
    :cond_6
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 23
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 24
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:I

    .line 25
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroid/view/View;

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->v()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->onCloseMenu(Landroidx/appcompat/view/menu/g;Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 3
    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->b:I

    if-lez p1, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/s;

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->E:I

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->b:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eq v2, v3, :cond_2

    .line 3
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/s;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/s;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->w(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/s;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->E:I

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v2

    move v3, v0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    .line 7
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_5
    :goto_2
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$a;

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/s;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 10
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/l;->g(Z)V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->k()V

    .line 12
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z

    return v4
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->updateMenuView(Z)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->b()Lb/f/k/b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3, p0}, Lb/f/k/b;->i(Lb/f/k/b$a;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    move v0, v2

    :cond_5
    :goto_2
    if-eqz v0, :cond_8

    .line 14
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-nez p1, :cond_6

    .line 15
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 16
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eq p1, v0, :cond_a

    if-eqz p1, :cond_7

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_a

    .line 20
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->h()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 21
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-ne p1, v0, :cond_a

    if-eqz v0, :cond_9

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->B()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->y()Z

    .line 25
    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eqz p1, :cond_b

    .line 26
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowBadgeText()Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getSumOfDigitsInBadges()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->d(Ljava/lang/String;I)V

    .line 29
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->B()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->y()Z

    .line 31
    :cond_d
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eqz p1, :cond_e

    .line 32
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    :cond_e
    return-void
.end method

.method public v()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->y()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->z()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public x()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$e;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/m;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-eqz v2, :cond_0

    .line 2
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->b()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->b()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
