.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroidx/appcompat/widget/a;
.source "ActionBarContextView.java"


# static fields
.field private static w:F = 1.2f


# instance fields
.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lb/a/a;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lb/a/j;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/v0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/v0;

    move-result-object p1

    .line 5
    sget p2, Lb/a/j;->ActionMode_background:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Lb/f/k/t;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 6
    sget p2, Lb/a/j;->ActionMode_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    .line 7
    sget p2, Lb/a/j;->ActionMode_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    .line 8
    sget p2, Lb/a/j;->ActionMode_height:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/v0;->m(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/a;->f:I

    .line 9
    sget p2, Lb/a/j;->ActionMode_closeItemLayout:I

    sget p3, Lb/a/g;->abc_action_mode_close_item_material:I

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->t:I

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/widget/v0;->v()V

    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    sget v1, Lb/a/g;->sesl_action_bar_title_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    .line 5
    sget v1, Lb/a/f;->action_bar_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    sget v1, Lb/a/f;->action_bar_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 15
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getIsActionModeAccessibilityOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h(Lb/a/o/b;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->t:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    sget v2, Lb/a/f;->action_mode_close_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 9
    new-instance v2, Landroidx/appcompat/widget/ActionBarContextView$a;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/widget/ActionBarContextView$a;-><init>(Landroidx/appcompat/widget/ActionBarContextView;Lb/a/o/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p1}, Lb/a/o/b;->c()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/g;

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->v()Z

    .line 13
    :cond_2
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 14
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->G(Z)V

    .line 15
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    iget-object v1, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/g;->addMenuPresenter(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->g(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object p1, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    .line 18
    invoke-static {p1, v1}, Lb/f/k/t;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->H()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lb/a/j;->ActionMode:[I

    const/4 v1, 0x0

    const v2, 0x1010394

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v0, Lb/a/j;->ActionMode_height:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->y()Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/a;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->z()Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInitializeAccessibilityEvent Check ActionMode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionBarContextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    .line 5
    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->v:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeAccessibilityEvent mIsActionModeAccessibilityOn :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 9
    const-class v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr p5, p3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    .line 5
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v7, :cond_3

    .line 6
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 7
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    if-eqz p1, :cond_2

    .line 8
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9
    :goto_2
    invoke-static {v0, v1, p1}, Landroidx/appcompat/widget/a;->d(IIZ)I

    move-result v8

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    move-object v0, p0

    move v2, v8

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/a;->e(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v8, v0

    .line 11
    invoke-static {v8, p5, p1}, Landroidx/appcompat/widget/a;->d(IIZ)I

    move-result v0

    :cond_3
    move p5, v0

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_4

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, p5

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/a;->e(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr p5, v0

    :cond_4
    move v2, p5

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz v1, :cond_5

    move-object v0, p0

    move v3, v6

    move v4, p3

    move v5, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/a;->e(Landroid/view/View;IIIZ)I

    :cond_5
    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    move v3, p2

    goto :goto_3

    :cond_6
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    move v3, p4

    .line 17
    :goto_3
    iget-object v2, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_7

    xor-int/lit8 p1, p1, 0x1

    move-object v1, p0

    move v4, v6

    move v5, p3

    move v6, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/a;->e(Landroid/view/View;IIIZ)I

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v1, " can only be used "

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_19

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/a;->f:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v3, v0, p2

    const/high16 v4, -0x80000000

    .line 8
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 9
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {p0, v6, v1, v5, v7}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;III)I

    move-result v1

    .line 11
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    sub-int/2addr v1, v8

    .line 13
    :cond_1
    iget-object v6, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_2

    .line 14
    iget-object v6, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v6, v1, v5, v7}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;III)I

    move-result v1

    .line 15
    :cond_2
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_f

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-nez v6, :cond_f

    .line 16
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    sget-object v10, Lb/a/j;->TextAppearance:[I

    invoke-virtual {v6, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 18
    sget v9, Lb/a/j;->TextAppearance_android_textSize:I

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 19
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    iget v6, v9, Landroid/util/TypedValue;->data:I

    invoke-static {v6}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v6

    .line 21
    iget-object v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 23
    sget v10, Landroidx/appcompat/widget/ActionBarContextView;->w:F

    cmpl-float v11, v9, v10

    if-lez v11, :cond_3

    move v9, v10

    .line 24
    :cond_3
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    mul-float/2addr v6, v9

    invoke-virtual {v10, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 25
    :cond_4
    iget-object v9, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    invoke-virtual {v9, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26
    :cond_5
    :goto_1
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    const/16 v9, 0x8

    if-eqz v6, :cond_6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v9, :cond_a

    .line 27
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lb/a/d;->sesl_toolbar_content_inset:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 28
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_8

    .line 29
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v11

    if-nez v11, :cond_7

    .line 31
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 32
    :cond_7
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 33
    :goto_2
    iget-object v11, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    :cond_8
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_a

    .line 35
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v11

    if-nez v11, :cond_9

    .line 37
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 38
    :cond_9
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 39
    :goto_3
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :cond_a
    iget-boolean v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    if-eqz v6, :cond_e

    .line 41
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 42
    iget-object v10, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 43
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    if-gt v5, v1, :cond_b

    goto :goto_4

    :cond_b
    move v8, v7

    :goto_4
    if-eqz v8, :cond_c

    sub-int/2addr v1, v5

    .line 44
    :cond_c
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_d

    move v9, v7

    :cond_d
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 45
    :cond_e
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v1, v5, v7}, Landroidx/appcompat/widget/a;->c(Landroid/view/View;III)I

    move-result v1

    .line 46
    :cond_f
    :goto_5
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz v5, :cond_14

    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 48
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-eq v6, v8, :cond_10

    move v6, v2

    goto :goto_6

    :cond_10
    move v6, v4

    .line 49
    :goto_6
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v9, :cond_11

    .line 50
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 51
    :cond_11
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v9, v8, :cond_12

    goto :goto_7

    :cond_12
    move v2, v4

    .line 52
    :goto_7
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_13

    .line 53
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 54
    :cond_13
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 55
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 56
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 57
    :cond_14
    iget v1, p0, Landroidx/appcompat/widget/a;->f:I

    if-gtz v1, :cond_17

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_8
    if-ge v7, v0, :cond_16

    .line 59
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-le v2, v1, :cond_15

    move v1, v2

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 61
    :cond_16
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_9

    .line 62
    :cond_17
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_9
    return-void

    .line 63
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "with android:layout_height=\"wrap_content\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/a;->f:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/a;->setVisibility(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
