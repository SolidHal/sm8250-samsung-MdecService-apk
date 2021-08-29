.class Landroidx/appcompat/widget/ActionMenuPresenter$d;
.super Landroidx/appcompat/widget/m;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private d:Lb/a/n/c;

.field final synthetic e:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    sget v0, Lb/a/a;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lb/a/h;->sesl_action_menu_overflow_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/ActionMenuPresenter;->m(Landroidx/appcompat/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 7
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->l(Landroidx/appcompat/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-gt p1, p2, :cond_0

    .line 9
    new-instance p1, Lb/a/n/c;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lb/a/e;->sesl_more_button_show_button_background:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lb/a/n/c;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->d:Lb/a/n/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lb/a/j;->View:[I

    sget v1, Lb/a/a;->actionOverflowButtonStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v0, Lb/a/j;->View_android_minHeight:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lb/a/h;->sesl_action_menu_overflow_description:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->m(Landroidx/appcompat/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lb/a/j;->AppCompatImageView:[I

    sget v1, Lb/a/a;->actionOverflowButtonStyle:I

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lb/a/j;->AppCompatImageView_android_src:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->d:Lb/a/n/c;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lb/a/e;->sesl_more_button_show_button_background:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/n/c;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->d:Lb/a/n/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/a/n/c;->c()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1}, Landroidx/appcompat/widget/x0;->c(Z)V

    :cond_1
    return v1
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroidx/appcompat/widget/x0;->a(Z)V

    .line 2
    invoke-static {v0}, Landroidx/appcompat/widget/x0;->b(Z)V

    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr p2, v0

    .line 8
    invoke-static {p3, v0, v1, p2, p4}, Lb/f/d/j/a;->l(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method
