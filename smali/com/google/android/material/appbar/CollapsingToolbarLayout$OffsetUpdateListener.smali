.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getCollapsedHeight()F

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$002(Lcom/google/android/material/appbar/CollapsingToolbarLayout;F)F

    .line 5
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$000(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsSetCollapsedHeight:Z

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->sesl_material_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$002(Lcom/google/android/material/appbar/CollapsingToolbarLayout;F)F

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->sesl_material_action_bar_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$002(Lcom/google/android/material/appbar/CollapsingToolbarLayout;F)F

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->sesl_material_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$002(Lcom/google/android/material/appbar/CollapsingToolbarLayout;F)F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 13

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e3851eb    # 0.17999999f

    mul-float/2addr v1, v2

    .line 5
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    .line 6
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput p2, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 7
    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$100(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 8
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lb/f/k/b0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lb/f/k/b0;->e()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    move v6, v4

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v5, :cond_5

    .line 10
    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 12
    invoke-static {v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v10

    .line 13
    iget-object v11, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v11

    if-eqz v11, :cond_2

    instance-of v11, v8, Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$300(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 14
    move-object v11, v8

    check-cast v11, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v11}, Landroidx/appcompat/widget/ActionBarContextView;->getIsActionModeAccessibilityOn()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 15
    iget-object v11, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_2

    .line 16
    :cond_1
    iget-object v11, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v11}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 17
    :cond_2
    :goto_2
    iget v11, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    if-eq v11, v7, :cond_4

    const/4 v7, 0x2

    if-eq v11, v7, :cond_3

    goto :goto_3

    :cond_3
    neg-int v7, p2

    int-to-float v7, v7

    .line 18
    iget v8, v9, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_3

    :cond_4
    neg-int v7, p2

    .line 19
    iget-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 20
    invoke-virtual {v9, v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v4, v8}, Lb/f/f/a;->b(III)I

    move-result v7

    .line 21
    invoke-virtual {v10, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22
    :cond_5
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 23
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v6, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    if-lez v3, :cond_6

    .line 24
    invoke-static {v5}, Lb/f/k/t;->S(Landroid/view/View;)V

    .line 25
    :cond_6
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 26
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v6}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    .line 27
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$400(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    sub-float v5, v0, v3

    mul-float/2addr p2, v5

    const/high16 v5, 0x437f0000    # 255.0f

    sub-float p2, v5, p2

    cmpg-float v6, p2, v3

    if-gez v6, :cond_7

    move p2, v3

    goto :goto_4

    :cond_7
    cmpl-float v6, p2, v5

    if-lez v6, :cond_8

    move p2, v5

    :cond_8
    :goto_4
    div-float/2addr p2, v5

    .line 28
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$100(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 29
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v5

    if-nez v5, :cond_9

    .line 30
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    goto :goto_5

    :cond_9
    cmpl-float p2, p2, v3

    if-nez p2, :cond_a

    .line 31
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    .line 32
    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$000(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0xff

    if-le p2, v4, :cond_e

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->isCollapsed()Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_6

    .line 33
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_10

    const/high16 p1, 0x43160000    # 150.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    float-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_c

    const-wide v2, 0x406fe00000000000L    # 255.0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_c

    .line 34
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->seslGetTitleTextColor()I

    move-result v0

    double-to-int p1, p1

    .line 35
    invoke-static {v0, p1}, Lb/f/d/a;->d(II)I

    move-result p2

    .line 36
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 37
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 38
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->seslGetSubtitleTextColor()I

    move-result p2

    .line 39
    invoke-static {p2, p1}, Lb/f/d/a;->d(II)I

    move-result p1

    .line 40
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    goto/16 :goto_7

    :cond_c
    cmpg-double p1, p1, v0

    if-gez p1, :cond_d

    .line 41
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->seslGetTitleTextColor()I

    move-result p1

    double-to-int p2, v0

    .line 42
    invoke-static {p1, p2}, Lb/f/d/a;->d(II)I

    move-result p1

    .line 43
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 44
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 45
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->seslGetSubtitleTextColor()I

    move-result p1

    .line 46
    invoke-static {p1, p2}, Lb/f/d/a;->d(II)I

    move-result p1

    .line 47
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    goto/16 :goto_7

    .line 48
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->seslGetTitleTextColor()I

    move-result p1

    .line 49
    invoke-static {p1, v5}, Lb/f/d/a;->d(II)I

    move-result p1

    .line 50
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 51
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 52
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->seslGetSubtitleTextColor()I

    move-result p1

    .line 53
    invoke-static {p1, v5}, Lb/f/d/a;->d(II)I

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    goto :goto_7

    .line 55
    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$100(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 56
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 57
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    .line 58
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->seslGetTitleTextColor()I

    move-result p1

    .line 59
    invoke-static {p1, v5}, Lb/f/d/a;->d(II)I

    move-result p1

    .line 60
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 61
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 62
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->seslGetSubtitleTextColor()I

    move-result p1

    .line 63
    invoke-static {p1, v5}, Lb/f/d/a;->d(II)I

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    goto :goto_7

    .line 65
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->access$500(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 66
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 67
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v5

    div-float/2addr p2, v0

    .line 68
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    :cond_10
    :goto_7
    return-void
.end method
