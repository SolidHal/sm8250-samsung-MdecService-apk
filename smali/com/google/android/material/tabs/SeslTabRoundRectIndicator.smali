.class public Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;
.super Lcom/google/android/material/tabs/SeslAbsIndicatorView;
.source "SeslTabRoundRectIndicator.java"


# static fields
.field private static final SESL_TAB_ROUND_RECT_PRESS_DURATION:I = 0x32

.field private static final SESL_TAB_ROUND_RECT_RELEASE_DURATION:I = 0x15e

.field private static final SESL_TAB_ROUND_RECT_SCALE_MINOR:F = 0.95f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mPressAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$drawable;->sesl_tablayout_subtab_indicator_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$drawable;->sesl_tablayout_subtab_indicator_background_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method private isLightTheme()Z
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/a/a;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method onHide()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method onSetSelectedIndicatorColor(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setHide()V

    :cond_1
    return-void
.end method

.method onShow()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->onHide()V

    :cond_0
    return-void
.end method

.method startPressAndReleaseEffect()V
    .locals 15

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x32

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v5, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator$2;

    invoke-direct {v5, p0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator$2;-><init>(Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/google/android/material/tabs/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 10
    iget-object v5, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 12
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 13
    invoke-virtual {v5, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 14
    invoke-virtual {v5, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/google/android/material/tabs/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v5, v0, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 17
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v7, 0x3f733333    # 0.95f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f733333    # 0.95f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    const-wide/16 v2, 0x15e

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/tabs/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {v0, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 22
    iget-object v0, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method startPressEffect()V
    .locals 15

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x32

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v5, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator$1;-><init>(Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/google/android/material/tabs/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 10
    iget-object v5, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 14
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/tabs/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method startReleaseEffect()V
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 4
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x15e

    .line 5
    invoke-virtual {v11, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/tabs/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {v11, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 8
    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
