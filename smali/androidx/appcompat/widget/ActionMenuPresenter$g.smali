.class Landroidx/appcompat/widget/ActionMenuPresenter$g;
.super Landroidx/appcompat/widget/w;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private f:Lb/a/n/c;

.field final synthetic g:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 5

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$g;->g:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    sget v0, Lb/a/a;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lb/a/j;->AppCompatTheme:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 6
    sget v3, Lb/a/j;->AppCompatTheme_actionMenuTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 7
    invoke-static {p0, v3}, Landroidx/core/widget/j;->o(Landroid/widget/TextView;I)V

    .line 8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/h;->sesl_more_item_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {p2}, Lb/a/n/a;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Landroidx/appcompat/widget/ActionMenuPresenter;->o(Landroidx/appcompat/widget/ActionMenuPresenter;Z)Z

    .line 11
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->n(Landroidx/appcompat/widget/ActionMenuPresenter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    sget p1, Lb/a/e;->sesl_action_bar_item_text_background:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/w;->setBackgroundResource(I)V

    goto :goto_0

    .line 13
    :cond_0
    sget p1, Lb/a/e;->sesl_action_bar_item_text_background_dark:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/w;->setBackgroundResource(I)V

    .line 14
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-le p1, p2, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/w;->d(Z)V

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Lb/a/n/c;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lb/a/e;->sesl_action_text_button_show_button_background:I

    invoke-static {p2, v0, v1}, Landroidx/core/content/d/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lb/a/n/c;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$g;->f:Lb/a/n/c;

    :goto_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$g;->f:Lb/a/n/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/a/n/c;->c()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/w;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$g;->f:Lb/a/n/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/a/n/c;->c()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$g;->g:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->H()Z

    return v1
.end method
