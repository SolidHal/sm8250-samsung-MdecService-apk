.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;,
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258

.field private static final LAND_HEIGHT_PERCENT:F = 0.3f

.field protected static final SESL_CTL_TAG:Ljava/lang/String; = "Sesl_CTL"

.field static final SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field final collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field lastInsets:Lb/f/k/b0;

.field private mCollapsingTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

.field private mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

.field private mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

.field private mCollapsingToolbarLayoutSubTitleEnabled:Z

.field private mCollapsingToolbarLayoutTitleEnabled:Z

.field private mDefaultHeightDp:F

.field private mExtendSubTitleAppearance:I

.field private mExtendTitleAppearance:I

.field private mHeightPercent:F

.field private mIsCollapsingToolbarTitleCustom:Z

.field private mIsCustomAccessibility:Z

.field private mStatsusBarHeight:I

.field private mViewStubCompat:Landroidx/appcompat/widget/ViewStubCompat;

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private refreshToolbar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final tmpRect:Landroid/graphics/Rect;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarDirectChild:Landroid/view/View;

.field private toolbarId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    .line 8
    iput v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mStatsusBarHeight:I

    const/4 v3, 0x0

    .line 9
    iput v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mHeightPercent:F

    .line 10
    sget-object v6, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout:[I

    sget v8, Lcom/google/android/material/R$style;->Widget_Material_CollapsingToolbar:I

    new-array v9, v2, [I

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .line 11
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 12
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    .line 13
    sget v5, Lcom/google/android/material/R$id;->collpasing_app_bar_title_layout:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 14
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 15
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    .line 16
    sget p2, Lcom/google/android/material/R$id;->collpasing_app_bar_title_layout_parent:I

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 17
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 18
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 19
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_extendTitleEnabled:I

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 20
    iget-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-ne p3, p2, :cond_0

    if-ne p3, v0, :cond_0

    xor-int/2addr p2, v0

    .line 21
    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 22
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz p2, :cond_1

    .line 23
    new-instance p2, Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 24
    sget-object p3, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v4, 0x800053

    .line 26
    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 27
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 28
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v4, 0x800013

    .line 29
    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 30
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 31
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 32
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 34
    :goto_0
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_extendTitleTextAppearance:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    .line 35
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_extendSubTitleTextAppearance:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mExtendSubTitleAppearance:I

    .line 36
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 37
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    .line 38
    :cond_2
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_subtitle:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 39
    iget-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz p3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 40
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    goto :goto_1

    .line 41
    :cond_3
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 42
    :goto_1
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    if-eqz p3, :cond_4

    .line 43
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 44
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_4
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_6

    .line 46
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {p3, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x10

    .line 47
    iput v5, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getStatusbarHeight()I

    move-result v5

    iput v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mStatsusBarHeight:I

    if-lez v5, :cond_5

    .line 50
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v6, v2, v2, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51
    :cond_5
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    :cond_6
    iget-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz p3, :cond_8

    .line 53
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 54
    sget v5, Lcom/google/android/material/R$id;->collpasing_app_bar_extended_title:I

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 55
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt p3, v5, :cond_7

    .line 56
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 57
    :cond_7
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 59
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    invoke-virtual {p3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/google/android/material/R$dimen;->sesl_material_extended_appbar_title_padding:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 62
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v4, p3, v2, p3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    :cond_8
    iget-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    if-eqz p3, :cond_9

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 65
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDefaultHeightDP()V

    .line 66
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTitleLayout()V

    .line 67
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 68
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    .line 69
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 70
    :cond_a
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 71
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    .line 72
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 73
    :cond_b
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 74
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    .line 75
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 76
    :cond_c
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 77
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    .line 78
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 79
    :cond_d
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz p2, :cond_f

    .line 81
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Material_CollapsingToolbar_Expanded:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 82
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget p3, Lb/a/i;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 83
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 84
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    .line 85
    invoke-virtual {v3, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 86
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 87
    :cond_e
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 88
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    .line 89
    invoke-virtual {v3, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 90
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 91
    :cond_f
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    .line 92
    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 93
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 p3, 0x258

    .line 94
    invoke-virtual {v3, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 95
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 96
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 97
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    .line 98
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Lcom/google/android/material/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p2, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 100
    sget p3, Lcom/google/android/material/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 101
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_10

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/R$layout;->sesl_material_action_mode_view_stub:I

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    sget p1, Lcom/google/android/material/R$id;->action_mode_bar_stub:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mViewStubCompat:Landroidx/appcompat/widget/ViewStubCompat;

    .line 104
    :cond_10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 106
    new-instance p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-static {p0, p1}, Lb/f/k/t;->j0(Landroid/view/View;Lb/f/k/p;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeightDp:F

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/appbar/CollapsingToolbarLayout;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeightDp:F

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    return p0
.end method

.method private animateScrim(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 4
    iget-wide v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$3;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 10
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private ensureToolbar()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 4
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    instance-of v5, v4, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_2

    .line 11
    move-object v0, v4

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 13
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mViewStubCompat:Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mViewStubCompat:Landroidx/appcompat/widget/ViewStubCompat;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    .line 17
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    return-void
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method private getStatusbarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 3
    sget v1, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private updateContentDescriptionFromTitle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDefaultHeightDP()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getCollapsedHeight()F

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeightDp:F

    .line 4
    iget-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsSetCollapsedHeight:Z

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeightDp:F

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->sesl_action_bar_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeightDp:F

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mDefaultHeightDp:F

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDummyView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method private updateTitleLayout()V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->sesl_abl_height_proportion:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mHeightPercent:F

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    sget-object v2, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6
    sget v1, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    const-string v2, "Sesl_CTL"

    if-nez v1, :cond_0

    const-string v0, "ExtendTitleAppearance value is null"

    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const v4, 0x3f8ccccd    # 1.1f

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v6, v5, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 10
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTitleLayout: context:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "orientation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "density:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,testSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "fontScale : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mCollapsingToolbarLayoutSubTitleEnabled :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 15
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    mul-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/material/R$dimen;->sesl_action_bar_text_size_title_extend_with_subtitle:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 18
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/android/material/R$dimen;->sesl_action_bar_text_size_subtitle:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 21
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    :goto_1
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mHeightPercent:F

    const v2, 0x3e99999a    # 0.3f

    cmpl-float v1, v1, v2

    const/4 v2, 0x2

    if-nez v1, :cond_4

    .line 23
    iget-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    if-eqz v1, :cond_3

    .line 24
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 25
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 27
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 29
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 30
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->getTitleIsCustom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mIsCollapsingToolbarTitleCustom:Z

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lb/f/k/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/f/k/b0;->e()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-lez v0, :cond_3

    .line 10
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCustomAccessibility()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    return v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLayoutTop()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, p1

    return v2
.end method

.method getScrimAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lb/f/k/b0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/f/k/b0;->e()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p0}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lb/f/k/t;->q(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Lb/f/k/t;->e0(Landroid/view/View;Z)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 7
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 8
    invoke-static {p0}, Lb/f/k/t;->V(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->sesl_abl_height_proportion:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mHeightPercent:F

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDefaultHeightDP()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTitleLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lb/f/k/b0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lb/f/k/b0;->e()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lb/f/k/t;->q(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 8
    invoke-static {v3, p1}, Lb/f/k/t;->N(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 10
    invoke-static {p1}, Lb/f/k/t;->G(Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz p1, :cond_9

    .line 11
    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    .line 12
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 13
    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result p1

    .line 14
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v2, v3}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 15
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 16
    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v4

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v4

    :goto_4
    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 17
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 18
    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    goto :goto_5

    :cond_6
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    :goto_5
    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    move-result p1

    sub-int/2addr v6, p1

    .line 20
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 21
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v1, :cond_7

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    goto :goto_6

    :cond_7
    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    :goto_6
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    add-int/2addr v3, v4

    sub-int/2addr p4, p2

    if-eqz v1, :cond_8

    iget p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    goto :goto_7

    :cond_8
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    :goto_7
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    sub-int/2addr p5, p2

    invoke-virtual {p1, v2, v3, p4, p5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 22
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 23
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_8
    if-ge v0, p1, :cond_a

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 25
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_10

    .line 26
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_d

    if-ne p1, p0, :cond_c

    goto :goto_9

    .line 29
    :cond_c
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_a

    .line 30
    :cond_d
    :goto_9
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 31
    :goto_a
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_f

    if-ne p1, p0, :cond_e

    goto :goto_b

    .line 32
    :cond_e
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    goto :goto_c

    .line 33
    :cond_f
    :goto_b
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    .line 34
    :goto_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    move-result p2

    if-eq p2, p1, :cond_10

    .line 35
    new-instance p2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$2;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;I)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ensureToolbar()V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lb/f/k/b0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/f/k/b0;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 3
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Lb/f/k/b0;)Lb/f/k/b0;
    .locals 2

    .line 1
    invoke-static {p0}, Lb/f/k/t;->q(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lb/f/k/b0;

    invoke-static {v1, v0}, Lb/f/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Lb/f/k/b0;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lb/f/k/b0;->a()Lb/f/k/b0;

    move-result-object p1

    return-object p1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    :cond_2
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomAccessibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    return-void
.end method

.method public setCustomTitleView(Landroid/view/View;Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->getTitleIsCustom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mIsCollapsingToolbarTitleCustom:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 2
    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 3
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 4
    iput p4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lb/f/k/t;->S(Landroid/view/View;)V

    .line 5
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 6
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lb/f/k/t;->H(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->animateScrim(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 5
    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lb/f/d/j/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 7
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 8
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 10
    :cond_4
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 4
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 6
    sget v3, Lcom/google/android/material/R$id;->collpasing_app_bar_extended_sub_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 7
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 10
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 12
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 13
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mExtendSubTitleAppearance:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$dimen;->sesl_action_bar_text_size_title_extend_with_subtitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 19
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 20
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 24
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTitleLayout()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateContentDescriptionFromTitle()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateTitleLayout()V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v1, :cond_2

    .line 7
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    :goto_0
    if-nez p1, :cond_3

    .line 11
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateDummyView()V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
