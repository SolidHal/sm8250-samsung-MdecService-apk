.class Landroidx/appcompat/widget/AppCompatSpinner$d;
.super Landroidx/appcompat/widget/g0;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private J:Ljava/lang/CharSequence;

.field K:Landroid/widget/ListAdapter;

.field final synthetic L:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->w(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/g0;->C(Z)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/g0;->H(I)V

    .line 7
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$d$a;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d$a;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$d;Landroidx/appcompat/widget/AppCompatSpinner;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/g0;->E(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic K(Landroidx/appcompat/widget/AppCompatSpinner$d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/g0;->show()V

    return-void
.end method


# virtual methods
.method L()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 7
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 8
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v5, v4, Landroidx/appcompat/widget/AppCompatSpinner;->h:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 9
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->K:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 11
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->c(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 12
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, v6, Landroidx/appcompat/widget/AppCompatSpinner;->i:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    add-int/lit8 v4, v4, 0x4

    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/g0;->y(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 15
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/g0;->y(I)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/g0;->y(I)V

    .line 17
    :goto_2
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v4}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->s()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    add-int/2addr v1, v0

    .line 19
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->b(Landroidx/appcompat/widget/AppCompatSpinner;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/g0;->i(I)V

    return-void
.end method

.method public g(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->J:Ljava/lang/CharSequence;

    return-void
.end method

.method public j(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->a()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$d;->L()V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/g0;->B(I)V

    .line 4
    invoke-super {p0}, Landroidx/appcompat/widget/g0;->show()V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->f()Landroid/widget/ListView;

    move-result-object v1

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 8
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->I(I)V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p2, Landroidx/appcompat/widget/AppCompatSpinner$d$b;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatSpinner$d$b;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$d;)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    new-instance p1, Landroidx/appcompat/widget/AppCompatSpinner$d$c;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$d$c;-><init>(Landroidx/appcompat/widget/AppCompatSpinner$d;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g0;->D(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public l()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->J:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public m(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g0;->m(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->K:Landroid/widget/ListAdapter;

    return-void
.end method

.method public show()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$d;->L:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->a(Landroidx/appcompat/widget/AppCompatSpinner;)V

    return-void
.end method
