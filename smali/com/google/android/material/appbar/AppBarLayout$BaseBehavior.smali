.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcom/google/android/material/appbar/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lcom/google/android/material/appbar/HeaderBehavior<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedType:I

.field private mDiffY_Touch:F

.field private mIsFlingScrollDown:Z

.field private mIsFlingScrollUp:Z

.field private mIsScrollHold:Z

.field mIsSetStaticDuration:Z

.field private mLastMotionY_Touch:F

.field private mLifted:Z

.field private mToolisMouse:Z

.field private mTouchSlop:I

.field private mVelocity:F

.field private offsetAnimator:Landroid/animation/ValueAnimator;

.field private offsetDelta:I

.field private offsetToChildIndexOnLayout:I

.field private offsetToChildIndexOnLayoutIsMinHeight:Z

.field private offsetToChildIndexOnLayoutPerc:F

.field private onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

.field private touchX:F

.field private touchY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 4
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 5
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsScrollHold:Z

    .line 6
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mTouchSlop:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    .line 8
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 12
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 13
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsScrollHold:Z

    .line 14
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mTouchSlop:I

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    .line 16
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    return p0
.end method

.method private animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .line 1
    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    const/16 v1, 0xfa

    if-lez p4, :cond_0

    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const v2, 0x453b8000    # 3000.0f

    cmpg-float p4, p4, v2

    if-gtz p4, :cond_0

    .line 2
    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sub-float/2addr v2, p4

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-int p4, v2

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    if-gt p4, v1, :cond_1

    move p4, v1

    .line 3
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    if-eqz v2, :cond_2

    const/4 p4, 0x0

    .line 4
    iput-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    goto :goto_1

    :cond_2
    move v1, p4

    .line 5
    :goto_1
    iget p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpg-float p4, p4, v2

    if-gez p4, :cond_3

    .line 6
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    .line 7
    :cond_3
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    return-void
.end method

.method private animateOffsetWithDuration(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 6
    sget-object v2, Lcom/google/android/material/appbar/AppBarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static checkFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lb/f/k/j;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    .line 8
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    :cond_0
    neg-int v2, p2

    if-gt v3, v2, :cond_1

    if-lt v4, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_2

    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v7

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v4}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    .line 10
    :cond_0
    invoke-static {v4}, Lb/f/k/t;->q(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_1
    if-lez v2, :cond_3

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 13
    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr p1, v0

    .line 14
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/2addr p2, v0

    return p2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method private isScrollHoldMode(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mToolisMouse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    .line 3
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result p1

    const/high16 v2, 0x10000

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method private shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 5
    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlayTop()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ltz v1, :cond_d

    .line 4
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v6

    and-int/lit16 v7, v6, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    neg-int v7, v7

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    neg-int v8, v8

    .line 9
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v1, v9, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v8, v1

    :cond_1
    const/4 v1, 0x2

    .line 11
    invoke-static {v6, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {v4}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v1

    add-int/2addr v8, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    .line 13
    invoke-static {v6, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-static {v4}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v8

    if-ge v0, v1, :cond_3

    move v7, v1

    goto :goto_0

    :cond_3
    move v8, v1

    :cond_4
    :goto_0
    const/16 v1, 0x20

    .line 15
    invoke-static {v6, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    .line 17
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v1

    :cond_5
    int-to-double v0, v0

    add-int v2, v8, v7

    int-to-double v4, v2

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v9, v4

    cmpg-double v2, v0, v9

    .line 18
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mLifted:Z

    if-eqz v2, :cond_8

    const-wide v9, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v4, v9

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_7

    :cond_6
    move v0, v7

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v8

    goto :goto_2

    :cond_8
    const-wide v9, 0x3fdb851eb851eb85L    # 0.43

    mul-double/2addr v4, v9

    cmpg-double v0, v0, v4

    if-gez v0, :cond_6

    goto :goto_1

    .line 19
    :goto_2
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->isScrollHoldMode(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 20
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    if-eqz v1, :cond_9

    .line 21
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 22
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_3

    :cond_9
    move v8, v0

    .line 23
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$000()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 24
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_5

    .line 25
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    if-eqz v1, :cond_b

    .line 26
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 27
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_4

    :cond_b
    move v8, v0

    .line 28
    :goto_4
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$000()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 29
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_5

    :cond_c
    move v7, v8

    .line 30
    :goto_5
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {v7, v0, v2}, Lb/f/f/a;->b(III)I

    move-result v0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    :cond_d
    return-void
.end method

.method private stopNestedScrollIfNeeded(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    .line 3
    :cond_1
    invoke-static {p3, v0}, Lb/f/k/t;->p0(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Lcom/google/android/material/appbar/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p4, :cond_0

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_0

    neg-int p3, p3

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    and-int/lit8 p4, v1, 0x2

    if-eqz p4, :cond_1

    neg-int p3, p3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v3

    .line 9
    :cond_2
    invoke-virtual {p2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result p3

    .line 10
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_4

    if-nez p5, :cond_3

    if-eqz p3, :cond_4

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->shouldJumpElevationState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    :cond_3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    :cond_4
    return-void
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getMaxDragOffset(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getScrollRangeForDragFling(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method bridge synthetic onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 7
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_0

    .line 8
    invoke-static {v0}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_3

    .line 12
    invoke-direct {p0, p1, p2, v0, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 14
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 16
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->resetPendingAction()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Lb/f/f/a;->b(III)I

    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->dispatchOffsetUpdates(I)V

    return p3
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 3
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    .line 4
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 2
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpg-float v0, p5, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 4
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    .line 5
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 6
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 7
    :goto_0
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    .line 9
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 10
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    return v1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    if-eqz v8, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-gez v8, :cond_2

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    add-int/2addr v3, v2

    .line 4
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 5
    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v10, v12

    cmpl-double v4, v4, v10

    if-ltz v4, :cond_0

    .line 7
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    :cond_0
    const/16 v4, -0x1e

    if-ge v8, v4, :cond_1

    .line 8
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_0

    .line 9
    :cond_1
    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    .line 10
    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    :goto_0
    move v4, v2

    move v5, v3

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v2

    neg-int v2, v2

    .line 12
    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 13
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    int-to-double v10, v5

    const-wide v12, 0x3fdb851eb851eb85L    # 0.43

    mul-double/2addr v10, v12

    cmpg-double v3, v3, v10

    if-gtz v3, :cond_3

    .line 15
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsSetStaticDuration:Z

    :cond_3
    const/16 v3, 0x1e

    if-le v8, v3, :cond_4

    .line 16
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    goto :goto_1

    .line 17
    :cond_4
    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mVelocity:F

    .line 18
    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 20
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsScrollHold:Z

    :cond_5
    move v5, v1

    move v4, v2

    :goto_2
    if-eq v4, v5, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v9

    .line 22
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual/range {p2 .. p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, p7

    .line 24
    invoke-direct {p0, v8, v7, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->isScrollHoldMode(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p4

    if-eqz p4, :cond_1

    if-gez p7, :cond_0

    .line 3
    iget-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsScrollHold:Z

    if-nez p4, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 6
    invoke-direct {p0, p7, p2, p3, p8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    invoke-static {p3, p1}, Lb/f/k/t;->p0(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-gez p7, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->scroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 10
    invoke-direct {p0, p7, p2, p3, p8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 2
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_0

    .line 3
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 4
    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 5
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 6
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    .line 7
    iget-boolean p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 8
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 9
    iput v3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 10
    invoke-static {v4}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float p1, v5

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canScrollChildren(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p1, p5

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_2
    iget-boolean p3, p2, Lcom/google/android/material/appbar/AppBarLayout;->mLifted:Z

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    .line 7
    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$000()F

    move-result p4

    cmpl-float p4, p3, p4

    if-lez p4, :cond_3

    .line 8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollapsedHeight is bigger than AppBarHeight :"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "Sesl_AppBarLayout"

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {p3}, Lcom/google/android/material/appbar/AppBarLayout;->access$002(F)F

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$000()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_4

    .line 11
    iput-boolean p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mLifted:Z

    .line 12
    iput-boolean p5, p2, Lcom/google/android/material/appbar/AppBarLayout;->mLifted:Z

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mDiffY_Touch:F

    goto :goto_1

    .line 14
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mLifted:Z

    .line 15
    iput-boolean v0, p2, Lcom/google/android/material/appbar/AppBarLayout;->mLifted:Z

    :goto_1
    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 17
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getLastInterceptTouchEventEvent()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getLastInterceptTouchEventEvent()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getLastTouchEventEvent()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/HeaderBehavior;->getLastTouchEventEvent()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 7
    :cond_1
    iget p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    if-eqz p1, :cond_2

    if-ne p4, v2, :cond_4

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 10
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsScrollHold:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsScrollHold:Z

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mTouchSlop:I

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    goto/16 :goto_2

    :cond_1
    if-eqz p3, :cond_2

    const/16 v0, 0x2002

    .line 5
    invoke-static {p3, v0}, Lb/f/k/h;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mToolisMouse:Z

    .line 6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 7
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    sub-float v3, v0, v2

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_3

    sub-float v1, v0, v2

    .line 8
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mDiffY_Touch:F

    .line 9
    :cond_3
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mDiffY_Touch:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 10
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    goto :goto_2

    .line 11
    :cond_4
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mDiffY_Touch:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x41a80000    # 21.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    .line 12
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mDiffY_Touch:F

    cmpg-float v4, v0, v1

    if-gez v4, :cond_5

    .line 13
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 14
    iput-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_1

    :cond_5
    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 15
    iput-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 16
    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    goto :goto_1

    .line 17
    :cond_6
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->touchX:F

    .line 18
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->touchY:F

    .line 19
    iput-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollUp:Z

    .line 20
    iput-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mIsFlingScrollDown:Z

    .line 21
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    .line 22
    :cond_7
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    goto :goto_2

    .line 23
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->touchX:F

    .line 24
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->touchY:F

    .line 25
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mLastMotionY_Touch:F

    .line 26
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->mDiffY_Touch:F

    .line 27
    :cond_9
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    .line 3
    invoke-static {p3, p4, p5}, Lb/f/f/a;->b(III)I

    move-result v5

    if-eq v0, v5, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-direct {p0, p2, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->interpolateOffset(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v5

    .line 6
    :goto_0
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int v1, v0, v5

    sub-int p3, v5, p3

    .line 7
    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    if-nez p4, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v5, v0, :cond_2

    const/4 p3, -0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    :goto_1
    move v6, p3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    goto :goto_2

    .line 12
    :cond_3
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    :cond_4
    :goto_2
    return v1
.end method
