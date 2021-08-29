.class Lcom/google/android/material/tabs/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private customIconView:Landroid/widget/ImageView;

.field private customTextView:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private defaultMaxLines:I

.field private iconView:Landroid/widget/ImageView;

.field mDotBadgeView:Landroid/widget/TextView;

.field private mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

.field private mIsCallPerformClick:Z

.field private mMainTabTouchBackground:Landroid/view/View;

.field mNBadgeView:Landroid/widget/TextView;

.field mTabViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextParentView:Landroid/widget/RelativeLayout;

.field private tab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 4
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$TabView$1;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    .line 6
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 7
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout;->access$900(Lcom/google/android/material/tabs/TabLayout;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 8
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    const/4 v2, 0x0

    invoke-static {p0, v2, p2, v2, v1}, Lb/f/k/t;->k0(Landroid/view/View;IIII)V

    :cond_0
    const/16 p2, 0x11

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 10
    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Lb/f/k/r;->b(Landroid/content/Context;I)Lb/f/k/r;

    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lb/f/k/t;->l0(Landroid/view/View;Lb/f/k/r;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/material/tabs/TabLayout$TabView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/google/android/material/tabs/TabLayout$TabView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/tabs/SeslAbsIndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/tabs/TabLayout$TabView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/tabs/TabLayout$TabView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p2, p3

    return p2
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private getContentWidth()I
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    move v2, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v7, v1, v3

    if-eqz v7, :cond_2

    .line 2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz v6, :cond_0

    .line 3
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    :goto_1
    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_2
    move v6, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v2, v5

    return v2
.end method

.method private showMainTabTouchBackground(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$900(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$TabView$2;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 14
    :cond_3
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    .line 15
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 18
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x15e

    .line 19
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/tabs/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private startTabTouchAnimation(Landroid/view/MotionEvent;Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    if-eqz p2, :cond_e

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_e

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    if-nez p2, :cond_6

    .line 3
    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    .line 4
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$1200(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1300(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v3

    .line 8
    invoke-static {p2, v0, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->access$1500(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;II)V

    .line 9
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setPressed()V

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 12
    iget-object v0, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 13
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout;->access$1600(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 15
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 16
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->access$1500(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;II)V

    .line 17
    :cond_3
    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {p2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setHide()V

    goto :goto_0

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$1200(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 20
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setPressed()V

    .line 22
    :cond_5
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->showMainTabTouchBackground(I)V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 24
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_7

    .line 25
    invoke-virtual {p2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setReleased()V

    if-eqz p1, :cond_7

    .line 26
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->performClick()Z

    .line 28
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x3

    if-ne p2, v1, :cond_d

    .line 29
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout;->access$1600(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 31
    invoke-static {p2}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v4, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 32
    invoke-static {p2, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->access$1500(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;II)V

    .line 33
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-nez p2, :cond_9

    .line 34
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setHide()V

    .line 35
    :cond_9
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 36
    iget-object v2, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 37
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout;->access$1300(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 39
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v5}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v5

    .line 40
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1500(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;II)V

    .line 41
    :cond_a
    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_b

    .line 42
    invoke-virtual {p2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setShow()V

    .line 43
    :cond_b
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p2}, Lcom/google/android/material/tabs/TabLayout;->access$900(Lcom/google/android/material/tabs/TabLayout;)I

    move-result p2

    if-ne p2, v0, :cond_c

    .line 44
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->showMainTabTouchBackground(I)V

    goto :goto_1

    .line 45
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 46
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setReleased()V

    .line 47
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_e
    :goto_2
    return v1
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$900(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    invoke-static {p1, v0}, Lb/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lb/f/d/j/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$2300(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 13
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_3
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    if-eqz p2, :cond_9

    .line 18
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    .line 20
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v6}, Lcom/google/android/material/tabs/TabLayout;->access$1000(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout;->access$1000(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v3

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6, v3}, Lcom/google/android/material/tabs/TabLayout;->dpToPx(I)I

    move-result v3

    goto :goto_5

    :cond_8
    move v3, v4

    .line 21
    :goto_5
    invoke-static {v2}, Lb/f/k/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v6

    if-eq v3, v6, :cond_9

    .line 22
    invoke-static {v2, v3}, Lb/f/k/f;->c(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 23
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 24
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    if-eqz p1, :cond_9

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    .line 27
    invoke-virtual {p2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    .line 28
    invoke-virtual {p2, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x11

    .line 29
    sget v3, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {p2, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$600(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_6

    :cond_a
    move-object p1, v1

    :goto_6
    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move-object v1, p1

    .line 32
    :goto_7
    invoke-static {p0, v1}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getTab()Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/View;->setLeft(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    sub-int p2, p4, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$dimen;->sesl_tab_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    .line 10
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p2}, Lcom/google/android/material/tabs/TabLayout;->access$1000(Lcom/google/android/material/tabs/TabLayout;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 11
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p2}, Lcom/google/android/material/tabs/TabLayout;->access$1000(Lcom/google/android/material/tabs/TabLayout;)I

    move-result p2

    add-int/2addr p1, p2

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 13
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p2}, Lcom/google/android/material/tabs/TabLayout;->access$1100(Lcom/google/android/material/tabs/TabLayout;)Z

    move-result p2

    if-eqz p2, :cond_3

    neg-int p1, p1

    .line 14
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result p3

    if-ne p2, p3, :cond_4

    .line 15
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 16
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 17
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result p3

    if-ne p2, p3, :cond_4

    .line 19
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 20
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 21
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v3

    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout;->access$1700(Lcom/google/android/material/tabs/TabLayout;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_2

    if-eqz v1, :cond_1

    if-le v0, v2, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 7
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-nez v3, :cond_8

    .line 9
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v5, v3, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    float-to-int v6, v5

    .line 10
    invoke-static {v3, v0, v6}, Lcom/google/android/material/tabs/TabLayout;->access$1800(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 11
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 12
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v6

    goto :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-le v3, v6, :cond_4

    .line 14
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v5, v3, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    .line 15
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 16
    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    .line 17
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v8}, Landroidx/core/widget/j;->d(Landroid/widget/TextView;)I

    move-result v8

    cmpl-float v3, v5, v3

    if-nez v3, :cond_5

    if-ltz v8, :cond_8

    if-eq v0, v8, :cond_8

    .line 18
    :cond_5
    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v8, v8, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-ne v8, v6, :cond_7

    if-lez v3, :cond_7

    if-ne v7, v6, :cond_7

    .line 19
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 20
    invoke-direct {p0, v3, v1, v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v3

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_7

    :cond_6
    move v6, v1

    :cond_7
    if-eqz v6, :cond_8

    .line 22
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    float-to-int v5, v5

    invoke-static {v3, v6, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1800(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 24
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 25
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz p1, :cond_a

    .line 27
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout;->access$900(Lcom/google/android/material/tabs/TabLayout;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    if-lez v2, :cond_9

    .line 28
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto :goto_2

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 30
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 31
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->sesl_tablayout_subtab_side_space:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->startTabTouchAnimation(Landroid/view/MotionEvent;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    return v1

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 4
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    return v1

    :cond_2
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    return-void
.end method

.method setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 4
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    :cond_2
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 7
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v3, 0x1020014

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 13
    invoke-static {v3}, Landroidx/core/widget/j;->d(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    :cond_5
    const v3, 0x1020006

    .line 14
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 15
    :cond_6
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 17
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    .line 18
    :cond_7
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    .line 19
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    .line 20
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 21
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v2, :cond_f

    .line 22
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout;->access$900(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-ne v2, v4, :cond_a

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/google/android/material/R$layout;->sesl_layout_sub_tab_text:I

    .line 24
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 25
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v4, v4, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    .line 26
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v4}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v4

    .line 27
    sget v7, Lcom/google/android/material/R$id;->indicator:I

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    iput-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v7, :cond_9

    .line 28
    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$2000(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v7

    if-eq v7, v6, :cond_9

    .line 29
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$2000(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    :cond_9
    move v6, v4

    goto :goto_5

    .line 30
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/google/android/material/R$layout;->sesl_layout_tab_text:I

    .line 31
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 32
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    move v5, v6

    .line 33
    :goto_3
    sget v4, Lcom/google/android/material/R$id;->indicator:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    iput-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v4, :cond_c

    .line 34
    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$2100(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    .line 35
    :cond_c
    sget v4, Lcom/google/android/material/R$id;->main_tab_touch_background:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v4, :cond_e

    .line 36
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-static {v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$100(Lcom/google/android/material/tabs/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_e

    .line 37
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v7}, Lcom/google/android/material/tabs/TabLayout;->access$2200(Lcom/google/android/material/tabs/TabLayout;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$drawable;->sesl_tablayout_maintab_touch_background_light:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_4

    .line 39
    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$drawable;->sesl_tablayout_maintab_touch_background_dark:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 40
    :goto_4
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 42
    :cond_e
    :goto_5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    sget v4, Lcom/google/android/material/R$id;->title:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0, v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 45
    iput-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    .line 46
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    .line 47
    invoke-static {v4}, Landroidx/core/widget/j;->d(Landroid/widget/TextView;)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    .line 48
    :cond_f
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_10

    .line 49
    sget v4, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 50
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    :cond_10
    if-eqz v0, :cond_11

    .line 51
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 52
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lb/f/d/j/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_11
    if-eqz v1, :cond_12

    .line 53
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 54
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_12

    .line 55
    invoke-static {v1, v2}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    :cond_12
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    invoke-static {v1, v2}, Landroidx/core/widget/j;->o(Landroid/widget/TextView;I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget v4, v1, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    float-to-int v4, v4

    invoke-static {v1, v2, v4}, Lcom/google/android/material/tabs/TabLayout;->access$1800(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_13

    .line 59
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    :cond_13
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_6

    .line 61
    :cond_14
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    .line 62
    :cond_15
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_16
    :goto_6
    if-eqz v0, :cond_17

    .line 63
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$600(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 64
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$600(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_17
    if-eqz v0, :cond_18

    .line 65
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v3, 0x1

    :cond_18
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method final updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v0, v0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_1
    return-void
.end method
