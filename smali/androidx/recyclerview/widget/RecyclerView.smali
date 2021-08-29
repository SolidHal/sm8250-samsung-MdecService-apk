.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lb/f/k/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$k0;,
        Landroidx/recyclerview/widget/RecyclerView$m0;,
        Landroidx/recyclerview/widget/RecyclerView$j0;,
        Landroidx/recyclerview/widget/RecyclerView$u;,
        Landroidx/recyclerview/widget/RecyclerView$w;,
        Landroidx/recyclerview/widget/RecyclerView$x;,
        Landroidx/recyclerview/widget/RecyclerView$c0;,
        Landroidx/recyclerview/widget/RecyclerView$o0;,
        Landroidx/recyclerview/widget/RecyclerView$SavedState;,
        Landroidx/recyclerview/widget/RecyclerView$s;,
        Landroidx/recyclerview/widget/RecyclerView$n0;,
        Landroidx/recyclerview/widget/RecyclerView$t;,
        Landroidx/recyclerview/widget/RecyclerView$a0;,
        Landroidx/recyclerview/widget/RecyclerView$r0;,
        Landroidx/recyclerview/widget/RecyclerView$l0;,
        Landroidx/recyclerview/widget/RecyclerView$b0;,
        Landroidx/recyclerview/widget/RecyclerView$h0;,
        Landroidx/recyclerview/widget/RecyclerView$e0;,
        Landroidx/recyclerview/widget/RecyclerView$d0;,
        Landroidx/recyclerview/widget/RecyclerView$y;,
        Landroidx/recyclerview/widget/RecyclerView$z;,
        Landroidx/recyclerview/widget/RecyclerView$r;,
        Landroidx/recyclerview/widget/RecyclerView$p0;,
        Landroidx/recyclerview/widget/RecyclerView$g0;,
        Landroidx/recyclerview/widget/RecyclerView$f0;,
        Landroidx/recyclerview/widget/RecyclerView$v;,
        Landroidx/recyclerview/widget/RecyclerView$i0;,
        Landroidx/recyclerview/widget/RecyclerView$q0;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FOCUS_MOVE_DOWN:I = 0x1

.field private static final FOCUS_MOVE_FULL_DOWN:I = 0x3

.field private static final FOCUS_MOVE_FULL_UP:I = 0x2

.field private static final FOCUS_MOVE_UP:I = 0x0

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LASTITEM_ADD_REMOVE_DURATION:I = 0x14a

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final MOTION_EVENT_ACTION_PEN_DOWN:I = 0xd3

.field private static final MOTION_EVENT_ACTION_PEN_MOVE:I = 0xd5

.field private static final MOTION_EVENT_ACTION_PEN_UP:I = 0xd4

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "SeslRecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final FRAME_LATENCY_LIMIT:F

.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private final STATISTICS_MAX_COUNT:I

.field mAccessibilityDelegate:Landroidx/recyclerview/widget/n;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

.field mAdapterHelper:Landroidx/recyclerview/widget/a;

.field mAdapterUpdateDuringMeasure:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAnimListener:Landroid/animation/Animator$AnimatorListener;

.field mAnimatedBlackTop:I

.field private mApproxLatency:F

.field private final mAutoHide:Ljava/lang/Runnable;

.field mBlackTop:I

.field private mBottomGlow:Landroidx/core/widget/i;

.field mChildBound:Landroid/graphics/Rect;

.field private mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$u;

.field public mChildHelper:Landroidx/recyclerview/widget/d;

.field mClipToPadding:Z

.field private mCloseChildByBottom:Landroid/view/View;

.field private mCloseChildByTop:Landroid/view/View;

.field private mCloseChildPositionByBottom:I

.field private mCloseChildPositionByTop:I

.field private mContext:Landroid/content/Context;

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mDistanceFromCloseChildBottom:I

.field private mDistanceFromCloseChildTop:I

.field mDrawLastItemOutlineStoke:Z

.field mDrawLastOutLineStroke:Z

.field mDrawOutlineStroke:Z

.field mDrawRect:Z

.field mDrawReverse:Z

.field mDrawWhiteTheme:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$v;

.field mEnableFastScroller:Z

.field private mEnableGoToTop:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroller:Landroidx/recyclerview/widget/p;

.field private mFastScrollerEnabled:Z

.field private mFastScrollerEventListener:Landroidx/recyclerview/widget/RecyclerView$j0;

.field mFirstLayoutComplete:Z

.field mGapWorker:Landroidx/recyclerview/widget/h;

.field private mGlowByDragging:Z

.field private final mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopBottomPadding:I

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutStart:Z

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

.field private mGoToTopLastState:I

.field private mGoToTopMoved:Z

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSize:I

.field private mGoToTopState:I

.field private mGoToToping:Z

.field mHasFixedSize:Z

.field private mHasNestedScrollRange:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/os/Handler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveringEnabled:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTopOffsetOfScreen:I

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$d0;

.field private mIsArrowKeyPressed:Z

.field mIsAttached:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlKeyPressed:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenMoveEvent:Z

.field private mIsGoToTopShown:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsMouseWheel:Z

.field private mIsNeedCheckLatency:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenDragBlockEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsPenSelectionEnabled:Z

.field private mIsSendHoverScrollState:Z

.field private mIsSetOnlyAddAnim:Z

.field private mIsSetOnlyRemoveAnim:Z

.field private mIsSkipMoveEvent:Z

.field mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

.field private mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$w$b;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$y;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field mLastBlackTop:I

.field private mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

.field private mLastItemAnimTop:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

.field private mLayoutOrScrollCounter:I

.field mLayoutSuppressed:Z

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroidx/core/widget/i;

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$k0;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mMotionEventUpPendingFlag:I

.field private mNavigationBarHeight:I

.field private mNeedsHoverScroll:Z

.field private final mNestedOffsets:[I

.field private mNestedScrollRange:I

.field private mNewTextViewHoverState:Z

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$i0;

.field private mOldHoverScrollDirection:I

.field private mOldTextViewHoverState:Z

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$c0;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$d0;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMultiSelectedListener:Landroidx/recyclerview/widget/RecyclerView$m0;

.field private mPenDistanceFromTrackedChildTop:I

.field private mPenDragBlockBottom:I

.field private mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mPenDragBlockLeft:I

.field private mPenDragBlockRect:Landroid/graphics/Rect;

.field private mPenDragBlockRight:I

.field private mPenDragBlockTop:I

.field private mPenDragEndX:I

.field private mPenDragEndY:I

.field private mPenDragScrollTimeInterval:J

.field private mPenDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenDragSelectedViewPosition:I

.field private mPenDragStartX:I

.field private mPenDragStartY:I

.field private mPenTrackedChild:Landroid/view/View;

.field private mPenTrackedChildPosition:I

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$r0;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroidx/recyclerview/widget/h$b;

.field private mPreserveFocusAfterLayout:Z

.field private mPrevLatencyTime:J

.field private mRectColor:I

.field private mRectPaint:Landroid/graphics/Paint;

.field final mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

.field mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$h0;

.field private mRemainNestedScrollRange:I

.field final mReusableIntPair:[I

.field private mRightGlow:Landroidx/core/widget/i;

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$e0;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Lb/f/k/k;

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSeslOnGoToTopClickListener:Landroidx/recyclerview/widget/RecyclerView$l0;

.field private mSeslPagingTouchSlop:I

.field private mSeslRoundedCorner:Lb/a/n/d;

.field private mSeslTouchSlop:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSizeChnage:Z

.field final mState:Landroidx/recyclerview/widget/RecyclerView$o0;

.field private mStatisticalCount:I

.field private mStrokeColor:I

.field private mStrokeHeight:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroidx/core/widget/i;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mUsePagingTouchSlopForStylus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$q0;

.field private final mViewInfoProcessCallback:Landroidx/recyclerview/widget/s$b;

.field final mViewInfoStore:Landroidx/recyclerview/widget/s;

.field private final mWindowOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    new-array v1, v0, [I

    const v2, 0x10100eb

    aput v2, v1, v3

    .line 2
    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    .line 9
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslTouchSlop:I

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslPagingTouchSlop:I

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$i0;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$i0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$i0;

    .line 8
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$g0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    .line 9
    new-instance v1, Landroidx/recyclerview/widget/s;

    invoke-direct {v1}, Landroidx/recyclerview/widget/s;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    .line 10
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 13
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroidx/recyclerview/widget/RecyclerView$l0;

    .line 17
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 18
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 22
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 23
    new-instance v2, Landroidx/recyclerview/widget/e;

    invoke-direct {v2}, Landroidx/recyclerview/widget/e;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 24
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v2, -0x1

    .line 25
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    const/4 v3, 0x1

    .line 26
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 27
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v3, 0x1

    .line 28
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 29
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$q0;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/RecyclerView$q0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$q0;

    .line 30
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v4, :cond_0

    new-instance v4, Landroidx/recyclerview/widget/h$b;

    invoke-direct {v4}, Landroidx/recyclerview/widget/h$b;-><init>()V

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/h$b;

    .line 31
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-direct {v4}, Landroidx/recyclerview/widget/RecyclerView$o0;-><init>()V

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    .line 32
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 33
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 34
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$w$b;

    .line 35
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 36
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    new-array v5, v4, [I

    .line 37
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    new-array v5, v4, [I

    .line 38
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    new-array v5, v4, [I

    .line 39
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    new-array v5, v4, [I

    .line 40
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 41
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    .line 42
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    .line 43
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    .line 44
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    .line 45
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 46
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    .line 47
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 48
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 49
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 50
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 51
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 52
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 53
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 54
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 55
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 56
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 57
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 58
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    .line 59
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 60
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 61
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    .line 62
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    .line 63
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    .line 64
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 65
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 66
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    .line 67
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsMouseWheel:Z

    .line 68
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGlowByDragging:Z

    .line 69
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEnabled:Z

    .line 70
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    .line 71
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    .line 72
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToping:Z

    .line 73
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopMoved:Z

    .line 74
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 75
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 76
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    .line 77
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowGTPAtFirstTime:Z

    .line 78
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    const/16 v5, 0x9c4

    .line 79
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    .line 80
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutStart:Z

    .line 81
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsGoToTopShown:Z

    .line 82
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    .line 83
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawOutlineStroke:Z

    .line 84
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    .line 85
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawWhiteTheme:Z

    .line 86
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    .line 87
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    .line 88
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    .line 89
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x2000000

    .line 91
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mMotionEventUpPendingFlag:I

    .line 92
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    const v5, 0x418547ae    # 16.66f

    .line 93
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->FRAME_LATENCY_LIMIT:F

    const/4 v5, 0x5

    .line 94
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->STATISTICS_MAX_COUNT:I

    .line 95
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mStatisticalCount:I

    const/4 v5, 0x0

    .line 96
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    .line 97
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    const/high16 v5, 0x41200000    # 10.0f

    .line 98
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    .line 99
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoveringEnabled:Z

    .line 100
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    .line 101
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAlwaysDisableHoverHighlight:Z

    .line 102
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 103
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    .line 104
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 105
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    .line 106
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    .line 107
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    const-wide/16 v5, 0x0

    .line 108
    iput-wide v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    .line 109
    iput-wide v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    .line 110
    iput-wide v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const-wide/16 v7, 0x12c

    .line 111
    iput-wide v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollTimeInterval:J

    const-wide/16 v7, 0x1f4

    .line 112
    iput-wide v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    .line 113
    iput-wide v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 114
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 115
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 116
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 117
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_DELAY:I

    .line 118
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 119
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    .line 120
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 121
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    .line 122
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollEnable:Z

    .line 123
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateChanged:Z

    .line 124
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 125
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    .line 126
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    .line 127
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 128
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    .line 129
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    .line 130
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mExtraPaddingInBottomHoverArea:I

    .line 131
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    .line 132
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    .line 133
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    .line 134
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByTop:I

    .line 135
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    .line 136
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    .line 137
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByBottom:I

    .line 138
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    .line 139
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Looper;)V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 141
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$k;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/RecyclerView$k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 142
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/s$b;

    .line 143
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/RecyclerView$b;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView$d;

    invoke-direct {v5, p0}, Landroidx/recyclerview/widget/RecyclerView$d;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    .line 146
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    .line 147
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    .line 148
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    .line 149
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    .line 150
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$f;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 151
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 152
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 154
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 155
    :cond_1
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 156
    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    .line 157
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 158
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslInitConfigurations(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 160
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$w$b;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$w;->t(Landroidx/recyclerview/widget/RecyclerView$w$b;)V

    .line 161
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 162
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    .line 163
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->initAutofill()V

    .line 164
    invoke-static {p0}, Lb/f/k/t;->r(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_3

    .line 165
    invoke-static {p0, v3}, Lb/f/k/t;->g0(Landroid/view/View;I)V

    .line 166
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "accessibility"

    .line 167
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 168
    new-instance v1, Landroidx/recyclerview/widget/n;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/n;)V

    const/high16 v1, 0x40000

    if-eqz p2, :cond_5

    .line 169
    sget-object v4, Lb/m/f;->RecyclerView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 170
    sget v5, Lb/m/f;->RecyclerView_layoutManager:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 171
    sget v5, Lb/m/f;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 172
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 173
    :cond_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move v10, p3

    .line 174
    invoke-direct/range {v6 .. v11}, Landroidx/recyclerview/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    .line 176
    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 177
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 178
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_6
    move p3, v3

    .line 180
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 181
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 182
    sget v1, Lb/m/d;->sesl_pen_block_selection:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/m/a;->goToTopStyle:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 184
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/m/a;->roundedCornerColor:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 186
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_8

    .line 187
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectColor:I

    .line 188
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lb/m/a;->roundedCornerStrokeColor:I

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 191
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_9

    .line 192
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokeColor:I

    .line 193
    :cond_9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$w;->s(Landroid/view/View;)V

    .line 196
    new-instance p1, Lb/a/n/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a/n/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslRoundedCorner:Lb/a/n/d;

    const/16 p2, 0xc

    .line 197
    invoke-virtual {p1, p2}, Lb/a/n/b;->f(I)V

    .line 198
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$002(Landroidx/recyclerview/widget/RecyclerView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    return p1
.end method

.method static synthetic access$102(Landroidx/recyclerview/widget/RecyclerView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    return p0
.end method

.method static synthetic access$1202(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$1300(Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    return p0
.end method

.method static synthetic access$1400(Landroidx/recyclerview/widget/RecyclerView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    return p0
.end method

.method static synthetic access$1600(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1602(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    return p0
.end method

.method static synthetic access$1802(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOldHoverScrollDirection:I

    return p1
.end method

.method static synthetic access$1900(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    return p0
.end method

.method static synthetic access$1902(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCloseChildSetted:Z

    return p1
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    return p1
.end method

.method static synthetic access$2100(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    return p0
.end method

.method static synthetic access$2202(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    return p1
.end method

.method static synthetic access$2300(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByBottom:I

    return p0
.end method

.method static synthetic access$2400(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    return p0
.end method

.method static synthetic access$2600(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mCloseChildPositionByTop:I

    return p0
.end method

.method static synthetic access$2700(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    return p0
.end method

.method static synthetic access$2800(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    return p0
.end method

.method static synthetic access$2900(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    return p0
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    return p0
.end method

.method static synthetic access$3000(Landroidx/recyclerview/widget/RecyclerView;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return-void
.end method

.method static synthetic access$3100(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    return-void
.end method

.method static synthetic access$3200(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->HOVERSCROLL_DELAY:I

    return p0
.end method

.method static synthetic access$3300(Landroidx/recyclerview/widget/RecyclerView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return p0
.end method

.method static synthetic access$3502(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$3600(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    return-object p0
.end method

.method static synthetic access$3700(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    return-object p0
.end method

.method static synthetic access$3800(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    return-object p0
.end method

.method static synthetic access$3900(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    return-void
.end method

.method static synthetic access$4100(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    return-void
.end method

.method static synthetic access$4200(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method static synthetic access$4300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4400(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$4500(Landroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4602(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$4700(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$4800(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$4902(Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$5002(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    return p1
.end method

.method static synthetic access$5102(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    return p1
.end method

.method static synthetic access$5200(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGlowByDragging:Z

    return p0
.end method

.method static synthetic access$5400(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    return p0
.end method

.method static synthetic access$5500(Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    return p0
.end method

.method static synthetic access$5600(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/p;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    return-object p0
.end method

.method static synthetic access$5700(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$600(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    return p0
.end method

.method static synthetic access$700(Landroidx/recyclerview/widget/RecyclerView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$800(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return p0
.end method

.method static synthetic access$802(Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return p1
.end method

.method static synthetic access$900(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$e0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    return-object p0
.end method

.method private addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$r0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$g0;->J(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    const/4 v1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Landroidx/recyclerview/widget/d;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/d;->b(Landroid/view/View;Z)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private adjustNestedScrollRange()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    sub-int v4, v1, v4

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 3
    aget v4, v2, v3

    sub-int/2addr v1, v4

    if-gez v1, :cond_0

    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    .line 5
    aget v0, v2, v3

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    :cond_0
    return-void
.end method

.method private adjustNestedScrollRangeBy(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-le v0, p1, :cond_2

    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    :cond_2
    :goto_0
    return-void
.end method

.method private animateChange(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->setIsRecyclable(Z)V

    if-eqz p5, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    :cond_0
    if-eq p1, p2, :cond_2

    if-eqz p6, :cond_1

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 4
    :cond_1
    iput-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$r0;

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 6
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {p5, p1}, Landroidx/recyclerview/widget/RecyclerView$g0;->J(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 7
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->setIsRecyclable(Z)V

    .line 8
    iput-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$r0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$r0;

    .line 9
    :cond_2
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$w;->b(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_3
    return-void
.end method

.method private autoHide(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private canScrollDown()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping canScrollDown"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    if-lez v0, :cond_3

    sub-int/2addr v0, v4

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_2

    move v2, v4

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private canScrollUp()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private cancelScroll()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$r0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$r0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 6
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_2
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$r0;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 7

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 7
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8
    :try_start_1
    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p3, v6, v3

    const/4 p1, 0x2

    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v6, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v6

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-array p4, v4, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 12
    :goto_1
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 13
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$z;)V

    goto/16 :goto_2

    :catch_1
    move-exception p4

    .line 14
    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Error creating LayoutManager "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 16
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_3
    move-exception p1

    .line 17
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_4
    move-exception p1

    .line 18
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_5
    move-exception p1

    .line 19
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_6
    move-exception p1

    .line 20
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget p1, v0, v3

    if-eq p1, p2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 6
    invoke-static {v1, v0}, Lb/f/k/c0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 7
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o0;->a(I)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$o0;)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->j:Z

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/s;->f()V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveFocusInfo()V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->i:Z

    .line 10
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->l:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->h:Z

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->f:I

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 18
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    .line 19
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->e(Landroidx/recyclerview/widget/RecyclerView$r0;)I

    move-result v6

    .line 20
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 21
    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$w;->q(Landroidx/recyclerview/widget/RecyclerView$o0;Landroidx/recyclerview/widget/RecyclerView$r0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$w$c;

    move-result-object v4

    .line 22
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/s;->e(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V

    .line 23
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$o0;->i:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 24
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 25
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$r0;)J

    move-result-wide v4

    .line 26
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v6, v4, v5, v3}, Landroidx/recyclerview/widget/s;->c(JLandroidx/recyclerview/widget/RecyclerView$r0;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->l:Z

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    .line 30
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    .line 31
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v3, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$z;->W0(Landroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;)V

    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    move v0, v2

    .line 33
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/d;->g()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 34
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 37
    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/s;->i(Landroidx/recyclerview/widget/RecyclerView$r0;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 38
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$w;->e(Landroidx/recyclerview/widget/RecyclerView$r0;)I

    move-result v3

    const/16 v4, 0x2000

    .line 39
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$r0;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_5

    or-int/lit16 v3, v3, 0x1000

    .line 40
    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    .line 41
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 42
    invoke-virtual {v5, v6, v1, v3, v7}, Landroidx/recyclerview/widget/RecyclerView$w;->q(Landroidx/recyclerview/widget/RecyclerView$o0;Landroidx/recyclerview/widget/RecyclerView$r0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$w$c;

    move-result-object v3

    if-eqz v4, :cond_6

    .line 43
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V

    goto :goto_4

    .line 44
    :cond_6
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4, v1, v3}, Landroidx/recyclerview/widget/s;->a(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 45
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5

    .line 46
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 47
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 48
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v1, 0x2

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->e:I

    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o0;->a(I)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->j()V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->f:I

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->d:I

    .line 7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->h:Z

    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$z;->W0(Landroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;)V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 11
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v2, 0x4

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->e:I

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 14
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o0;->a(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->e:I

    .line 5
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$r0;)J

    move-result-wide v2

    .line 10
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    .line 11
    invoke-virtual {v4, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$w;->p(Landroidx/recyclerview/widget/RecyclerView$o0;Landroidx/recyclerview/widget/RecyclerView$r0;)Landroidx/recyclerview/widget/RecyclerView$w$c;

    move-result-object v4

    .line 12
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v6, v2, v3}, Landroidx/recyclerview/widget/s;->g(J)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_3

    .line 14
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/s;->h(Landroidx/recyclerview/widget/RecyclerView$r0;)Z

    move-result v8

    .line 15
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/s;->h(Landroidx/recyclerview/widget/RecyclerView$r0;)Z

    move-result v9

    if-eqz v8, :cond_1

    if-ne v6, v5, :cond_1

    .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/s;->d(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/s;->n(Landroidx/recyclerview/widget/RecyclerView$r0;)Landroidx/recyclerview/widget/RecyclerView$w$c;

    move-result-object v7

    .line 18
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v10, v5, v4}, Landroidx/recyclerview/widget/s;->d(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V

    .line 19
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/s;->m(Landroidx/recyclerview/widget/RecyclerView$r0;)Landroidx/recyclerview/widget/RecyclerView$w$c;

    move-result-object v10

    if-nez v7, :cond_2

    .line 20
    invoke-direct {p0, v2, v3, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$r0;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    .line 21
    invoke-direct/range {v3 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->animateChange(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;ZZ)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/s;->d(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Landroidx/recyclerview/widget/s$b;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/s;->o(Landroidx/recyclerview/widget/s$b;)V

    .line 24
    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    .line 26
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    .line 28
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 29
    iget-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    if-eqz v5, :cond_6

    iget-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z

    if-eqz v5, :cond_6

    .line 30
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    move v2, v3

    goto :goto_2

    .line 31
    :cond_6
    iget-boolean v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    if-nez v5, :cond_7

    iget-boolean v4, v4, Landroidx/recyclerview/widget/LinearLayoutManager;->y:Z

    if-eqz v4, :cond_8

    .line 32
    :cond_7
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    move v2, v0

    :cond_8
    :goto_2
    if-ltz v2, :cond_a

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v4

    if-gt v2, v4, :cond_a

    .line 34
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 38
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchLayoutStep3, lastPosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBlackTop : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tempView bottom : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDrawReverse : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$z;->k1(Landroidx/recyclerview/widget/RecyclerView$g0;)V

    .line 40
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->f:I

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->c:I

    .line 41
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 42
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 43
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    .line 44
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->l:Z

    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$z;->h:Z

    .line 46
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$g0;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$z;->n:Z

    if-eqz v2, :cond_c

    .line 49
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$z;->m:I

    .line 50
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$z;->n:Z

    .line 51
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->K()V

    .line 52
    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$z;->X0(Landroidx/recyclerview/widget/RecyclerView$o0;)V

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 54
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/s;->f()V

    .line 56
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v0, v3

    aget v0, v0, v1

    invoke-direct {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 57
    invoke-virtual {p0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 58
    :cond_d
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->recoverFocusFromState()V

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$d0;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$d0;

    :cond_3
    return v1
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private findFirstChildPosition()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X1()I

    move-result v0

    goto :goto_1

    .line 3
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->Y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r2()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f2([I)[I

    move-result-object v1

    aget v0, v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    return v2
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$d0;

    .line 4
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    .line 5
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$d0;

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    aput v0, p1, v2

    .line 3
    aput v0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    .line 4
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$r0;->getLayoutPosition()I

    move-result v6

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_4
    aput v3, p1, v2

    .line 8
    aput v4, p1, v1

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    .line 4
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o0;->b()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 8
    :cond_4
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    return-object v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    return-object v1
.end method

.method private findSuperClass(Landroid/view/ViewParent;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$a0;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroidx/recyclerview/widget/RecyclerView$r0;

    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 7
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "."

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPendingAnimFlag()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/e;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->e0()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getScrollingChildHelper()Lb/f/k/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Lb/f/k/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/f/k/k;

    invoke-direct {v0, p0}, Lb/f/k/k;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Lb/f/k/k;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Lb/f/k/k;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$r0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v2

    if-ne v2, p3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$r0;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const-string p2, " \n View Holder 2:"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be found but it is necessary for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SeslRecyclerView"

    .line 12
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initAutofill()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lb/f/k/t;->s(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-static {p0, v0}, Lb/f/k/t;->h0(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/d;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/d$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    return-void
.end method

.method private isInDialog()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private isNavigationBarHide(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->isSupportSoftNavigationBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigationbar_hide_bar_enabled"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    if-eq p2, p0, :cond_1a

    if-ne p1, p2, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 2
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 3
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->Y()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, v1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v1

    .line 8
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_5

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v2, v4, :cond_6

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_6

    move v2, v1

    goto :goto_1

    .line 9
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_7

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_8

    :cond_7
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_8

    move v2, p2

    goto :goto_1

    :cond_8
    move v2, v0

    .line 10
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v5, :cond_a

    :cond_9
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_a

    move p2, v1

    goto :goto_2

    .line 11
    :cond_a
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_b

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v3, v5, :cond_c

    :cond_b
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_c

    goto :goto_2

    :cond_c
    move p2, v0

    :goto_2
    if-eq p3, v1, :cond_18

    const/4 v3, 0x2

    if-eq p3, v3, :cond_15

    const/16 p1, 0x11

    if-eq p3, p1, :cond_13

    const/16 p1, 0x21

    if-eq p3, p1, :cond_11

    const/16 p1, 0x42

    if-eq p3, p1, :cond_f

    const/16 p1, 0x82

    if-ne p3, p1, :cond_e

    if-lez p2, :cond_d

    move v0, v1

    :cond_d
    return v0

    .line 12
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    if-lez v2, :cond_10

    move v0, v1

    :cond_10
    return v0

    :cond_11
    if-gez p2, :cond_12

    move v0, v1

    :cond_12
    return v0

    :cond_13
    if-gez v2, :cond_14

    move v0, v1

    :cond_14
    return v0

    :cond_15
    if-gtz p2, :cond_16

    if-nez p2, :cond_17

    mul-int/2addr v2, p1

    if-ltz v2, :cond_17

    :cond_16
    move v0, v1

    :cond_17
    return v0

    :cond_18
    if-ltz p2, :cond_19

    if-nez p2, :cond_1a

    mul-int/2addr v2, p1

    if-gtz v2, :cond_1a

    :cond_19
    move v0, v1

    :cond_1a
    :goto_3
    return v0
.end method

.method private isSupportGotoTop()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportSoftNavigationBar(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTalkBackIsRunning()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private multiSelection(IIIIZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 2
    iget-boolean p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    if-eqz p5, :cond_2

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 4
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 5
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    int-to-float p5, p1

    int-to-float v0, p2

    .line 6
    invoke-virtual {p0, p5, v0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {p0, p5, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez p5, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "multiSelection, mPenTrackedChild is NULL"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    .line 10
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    return-void

    .line 11
    :cond_0
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Landroidx/recyclerview/widget/RecyclerView$m0;

    if-eqz p5, :cond_1

    .line 12
    invoke-interface {p5, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m0;->a(II)V

    .line 13
    :cond_1
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {p0, p5}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p5

    iput p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 14
    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    iput p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 15
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    .line 16
    :cond_2
    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    if-nez p5, :cond_4

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    if-nez p5, :cond_4

    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 18
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 19
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Landroidx/recyclerview/widget/RecyclerView$m0;

    if-eqz p5, :cond_3

    .line 20
    invoke-interface {p5, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m0;->a(II)V

    .line 21
    :cond_3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    .line 22
    :cond_4
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 23
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-gez p2, :cond_5

    .line 24
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_0

    :cond_5
    if-le p2, p4, :cond_6

    .line 25
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 26
    :cond_6
    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    if-ge p1, p5, :cond_7

    goto :goto_1

    :cond_7
    move p1, p5

    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 27
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge p1, p5, :cond_8

    goto :goto_2

    :cond_8
    move p1, p5

    :goto_2
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 28
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    if-le p1, p5, :cond_9

    goto :goto_3

    :cond_9
    move p1, p5

    :goto_3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 29
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    if-le p1, p5, :cond_a

    goto :goto_4

    :cond_a
    move p1, p5

    :goto_4
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    move p5, v1

    :cond_b
    if-eqz p5, :cond_13

    .line 30
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr p3, p1

    if-gt p2, p3, :cond_d

    .line 31
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_c

    .line 32
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz p1, :cond_c

    .line 35
    invoke-virtual {p1, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 36
    :cond_c
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 p1, 0x2

    .line 38
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 40
    :cond_d
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr p4, p1

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_f

    .line 41
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_e

    .line 42
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz p1, :cond_e

    .line 45
    invoke-virtual {p1, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 46
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 48
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 49
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 50
    :cond_f
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz p1, :cond_10

    .line 51
    invoke-virtual {p1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_10
    const-wide/16 p1, 0x0

    .line 52
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 53
    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 54
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 55
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 56
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v1, :cond_11

    .line 58
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 59
    :cond_11
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 60
    :cond_12
    :goto_5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p1, :cond_13

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_13
    return-void
.end method

.method private multiSelectionEnd(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Landroidx/recyclerview/widget/RecyclerView$m0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m0;->b(II)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenPressed:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 7
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 8
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 10
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 12
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 13
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 14
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 16
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 17
    iget-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 19
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pageScroll(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string v0, "No adapter attached; skipping pageScroll"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_3
    move p1, v1

    goto :goto_0

    .line 4
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    .line 5
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr p1, v3

    :goto_0
    sub-int/2addr v0, v2

    if-le p1, v0, :cond_6

    move v1, v0

    goto :goto_1

    :cond_6
    if-gez p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, p1

    .line 6
    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$z;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$z;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return v2
.end method

.method private playGotoToFadeIn()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playGotoToFadeOut()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->K1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->y()V

    .line 3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$z;->R0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->w()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->j()V

    .line 8
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 9
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$z;->h:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 10
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$o0;->k:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_7

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, v3, Landroidx/recyclerview/widget/RecyclerView$o0;->l:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-gez v1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    neg-float v4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    sub-float p3, v2, p3

    invoke-virtual {v1, v4, p3}, Landroidx/core/widget/i;->onPull(FF)V

    :goto_0
    move p3, v3

    goto :goto_1

    :cond_0
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-virtual {v1, v4, p3}, Landroidx/core/widget/i;->onPull(FF)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    cmpg-float v1, p4, v0

    if-gez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 6
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-virtual {p3, v1, p1}, Landroidx/core/widget/i;->onPull(FF)V

    goto :goto_2

    :cond_2
    cmpl-float v1, p4, v0

    if-lez v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 8
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v2, p1

    invoke-virtual {p3, v1, v2}, Landroidx/core/widget/i;->onPull(FF)V

    goto :goto_2

    :cond_3
    move v3, p3

    .line 9
    :goto_2
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGlowByDragging:Z

    if-nez v3, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_4

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_5

    .line 10
    :cond_4
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_9

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 6
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void

    .line 10
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->n(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-wide v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-wide v4, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->n:J

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 13
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/d;->n(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    goto :goto_2

    .line 16
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    if-lez v0, :cond_7

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->o:I

    int-to-long v4, v0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v0

    .line 21
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    :goto_3
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/core/widget/i;->onRelease()V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroidx/core/widget/i;->onRelease()V

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 7
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroidx/core/widget/i;->onRelease()V

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 10
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroidx/core/widget/i;->onRelease()V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 5
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Z

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:Landroid/graphics/Rect;

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 8
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 9
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 10
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView$z;->r1(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->n:J

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->m:I

    .line 3
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->o:I

    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private runLastItemAddDeleteAnim(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v0, v4, [I

    .line 4
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    aput v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    if-eqz v1, :cond_2

    .line 6
    instance-of v1, v0, Landroidx/recyclerview/widget/e;

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/e;->c0()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    :cond_1
    new-array v0, v4, [I

    .line 8
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    aput v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x14a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private saveFocusInfo()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_4

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getItemId()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->n:J

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$r0;->mOldPosition:I

    goto :goto_3

    .line 8
    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getAdapterPosition()I

    move-result v2

    :goto_3
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->m:I

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->o:I

    :goto_4
    return-void
.end method

.method private setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$r;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$i0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$r;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$r;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 5
    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/a;->y()V

    .line 6
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$i0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$r;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 9
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$r;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 10
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz p1, :cond_4

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$z;->D0(Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 12
    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1, p3, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$g0;->x(Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$r;Z)V

    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    return-void
.end method

.method private setupGoToTop(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_1

    move p1, v1

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 4
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    if-eqz v3, :cond_3

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 6
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_5

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move p1, v0

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eq p1, v0, :cond_7

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    :cond_7
    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    if-nez v2, :cond_8

    if-nez p1, :cond_8

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz v2, :cond_8

    .line 11
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    .line 12
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 13
    :cond_9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    div-int/2addr v3, v2

    add-int/2addr v5, v3

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_a

    if-eq p1, v2, :cond_a

    goto :goto_2

    .line 18
    :cond_a
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    new-instance v3, Landroid/graphics/Rect;

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    div-int/lit8 v7, v6, 0x2

    sub-int v7, v5, v7

    sub-int v8, v4, v6

    iget v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v8, v9

    div-int/2addr v6, v2

    add-int/2addr v5, v6

    sub-int/2addr v4, v9

    invoke-direct {v3, v7, v8, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 20
    :cond_b
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v3, v2, :cond_c

    .line 21
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 22
    :cond_c
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v3, v2, :cond_d

    .line 23
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mShowFadeOutGTP:I

    .line 24
    :cond_d
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-ne p1, v0, :cond_f

    .line 25
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    if-eqz p1, :cond_f

    .line 26
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_f
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    .line 28
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopLastState:I

    return-void
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-static {p1, p2}, Lb/n/h/b;->a(Landroid/view/InputDevice;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$q0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$q0;->k()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->J1()V

    :cond_0
    return-void
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    .line 1
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/d;->g()I

    move-result v8

    .line 2
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const-string v2, "SeslRecyclerView"

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 3
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 4
    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    int-to-float v1, v0

    int-to-float v3, v7

    .line 5
    invoke-virtual {v6, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    iput-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v6, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v0, "updateLongPressMultiSelection, mPenTrackedChild is NULL"

    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    return-void

    .line 9
    :cond_0
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$k0;

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView$k0;->b(II)V

    .line 11
    :cond_1
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 12
    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 13
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 14
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 15
    :cond_2
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v10, v1

    move v11, v3

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    move v11, v3

    move v10, v9

    .line 19
    :goto_0
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 20
    iput v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-gez v7, :cond_4

    .line 21
    iput v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_1

    :cond_4
    if-le v7, v11, :cond_5

    .line 22
    iput v11, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 23
    :cond_5
    :goto_1
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    int-to-float v0, v0

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 24
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    int-to-float v0, v0

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "updateLongPressMultiSelection, touchedView is NULL"

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 26
    :cond_6
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    const/4 v12, -0x1

    if-eq v0, v12, :cond_17

    .line 27
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 28
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-ge v1, v0, :cond_7

    move v14, v0

    move v13, v1

    goto :goto_2

    :cond_7
    move v13, v0

    move v14, v1

    .line 29
    :goto_2
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    if-ge v0, v1, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 30
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v1, :cond_9

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 31
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    if-le v0, v1, :cond_a

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 32
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    if-le v0, v1, :cond_b

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    move v15, v9

    :goto_7
    const/4 v0, 0x1

    if-ge v15, v8, :cond_f

    .line 33
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 34
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 36
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v13, v1, :cond_c

    if-gt v1, v14, :cond_c

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-eq v1, v3, :cond_c

    goto :goto_8

    :cond_c
    move v0, v9

    :goto_8
    if-eqz v0, :cond_d

    .line 37
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-eq v0, v12, :cond_e

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 39
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$k0;

    if-eqz v0, :cond_e

    .line 41
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 42
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    move-object/from16 v1, p0

    .line 43
    invoke-interface/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$k0;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    goto :goto_9

    .line 44
    :cond_d
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-eq v0, v12, :cond_e

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 46
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$k0;

    if-eqz v0, :cond_e

    .line 48
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 49
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    move-object/from16 v1, p0

    .line 50
    invoke-interface/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$k0;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    :cond_e
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 51
    :cond_f
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v1, v7

    if-eqz p3, :cond_16

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-lt v2, v3, :cond_16

    .line 53
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v10, v2

    if-gt v7, v10, :cond_11

    if-lez v1, :cond_11

    .line 54
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_10

    .line 55
    iput-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 57
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz v1, :cond_10

    .line 58
    invoke-virtual {v1, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 59
    :cond_10
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 v0, 0x2

    .line 61
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 62
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 63
    :cond_11
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v11, v2

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v11, v2

    if-lt v7, v11, :cond_13

    if-gez v1, :cond_13

    .line 64
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_12

    .line 65
    iput-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 67
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz v1, :cond_12

    .line 68
    invoke-virtual {v1, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 69
    :cond_12
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 71
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 72
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 73
    :cond_13
    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_14

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz v1, :cond_14

    .line 74
    invoke-virtual {v1, v6, v9}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_14
    const-wide/16 v1, 0x0

    .line 75
    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 76
    iput-wide v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 77
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 78
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 79
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v1, v0, :cond_15

    .line 81
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 82
    :cond_15
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 83
    :cond_16
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_17
    const-string v0, "touchedPosition is NO_POSITION"

    .line 84
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroidx/core/widget/i;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {v0, p1}, Landroidx/core/widget/i;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroidx/core/widget/i;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {v0, p2}, Landroidx/core/widget/i;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 13
    :cond_4
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$z;->E0(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;I)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->g(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->setIsRecyclable(Z)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$w;->a(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method animateDisappearance(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addAnimatingView(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->setIsRecyclable(Z)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$w;->c(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;Landroidx/recyclerview/widget/RecyclerView$w$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "SeslRecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 8
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$r0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$w;->g(Landroidx/recyclerview/widget/RecyclerView$r0;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->m(Landroidx/recyclerview/widget/RecyclerView$a0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method clearOldPositions()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r0;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->d()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->q(Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->r(Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->s(Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->t(Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->u(Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->v(Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result v1

    :cond_1
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->onRelease()V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->onRelease()V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 7
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/core/widget/i;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->onRelease()V

    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 10
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/core/widget/i;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->onRelease()V

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->o(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    const/16 v2, 0xb

    .line 4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->o(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RV PartialInvalidate"

    .line 5
    invoke-static {v0}, Lb/f/g/b;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->w()V

    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_3

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->i()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 15
    invoke-static {}, Lb/f/g/b;->b()V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-static {v1}, Lb/f/g/b;->a(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 19
    invoke-static {}, Lb/f/g/b;->b()V

    :cond_5
    :goto_1
    return-void

    .line 20
    :cond_6
    :goto_2
    invoke-static {v1}, Lb/f/g/b;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 22
    invoke-static {}, Lb/f/g/b;->b()V

    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-static {p0}, Lb/f/k/t;->v(Landroid/view/View;)I

    move-result v1

    .line 3
    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->n(III)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-static {p0}, Lb/f/k/t;->u(Landroid/view/View;)I

    move-result v1

    .line 6
    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->n(III)I

    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$r;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$r;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->b(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$y;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastBlackTop:I

    if-eq v0, v3, :cond_e

    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAddRemoveAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    :cond_3
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPendingAnimFlag()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    .line 10
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    .line 11
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    .line 12
    :cond_6
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawReverse:Z

    if-eqz v0, :cond_8

    .line 13
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_8
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_c

    .line 15
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyRemoveAnim:Z

    if-eqz v1, :cond_a

    goto :goto_3

    .line 16
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    goto :goto_4

    .line 17
    :cond_b
    :goto_3
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->runLastItemAddDeleteAnim(Landroid/view/View;)V

    .line 18
    :cond_c
    :goto_4
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    if-ne v0, v3, :cond_d

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    if-ne v1, v0, :cond_d

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSetOnlyAddAnim:Z

    if-eqz v0, :cond_f

    :cond_d
    const/4 v2, 0x0

    .line 19
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v0, :cond_f

    .line 21
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslRoundedCorner:Lb/a/n/d;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAnimatedBlackTop:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lb/a/n/d;->g(IIIILandroid/graphics/Canvas;)V

    goto :goto_5

    .line 22
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslRoundedCorner:Lb/a/n/d;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslRoundedCorner:Lb/a/n/d;

    invoke-virtual {v5}, Lb/a/n/b;->c()I

    move-result v5

    add-int/2addr v5, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lb/a/n/d;->g(IIIILandroid/graphics/Canvas;)V

    .line 24
    :cond_f
    :goto_5
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mBlackTop:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastItemAnimTop:I

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const-string v3, "SeslRecyclerView"

    if-nez v2, :cond_0

    const-string v2, "No adapter attached; skipping hover scroll"

    .line 2
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    .line 6
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsMouseWheel:Z

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_2

    :cond_1
    if-ne v5, v9, :cond_2

    .line 7
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    goto :goto_0

    :cond_2
    if-ne v2, v8, :cond_3

    .line 8
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenHovered:Z

    .line 9
    :cond_3
    :goto_0
    invoke-static {}, Lb/n/i/d;->d()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    const/16 v12, 0x20

    if-nez v11, :cond_5

    .line 10
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eqz v11, :cond_5

    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v11, :cond_5

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-eq v11, v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-ne v11, v9, :cond_5

    .line 12
    :cond_4
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    goto :goto_1

    .line 13
    :cond_5
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 14
    :goto_1
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mNewTextViewHoverState:Z

    iput-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eq v2, v6, :cond_b

    .line 15
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateChanged:Z

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_6
    if-ne v2, v7, :cond_a

    .line 16
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v9, :cond_7

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v9, :cond_8

    :cond_7
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    if-eqz v3, :cond_9

    .line 18
    :cond_8
    invoke-static {}, Lb/n/h/d;->c()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 19
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 20
    :cond_9
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v3, :cond_14

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_14

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v12, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v9, :cond_14

    .line 22
    invoke-static {}, Lb/n/h/d;->a()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 23
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    :cond_a
    if-ne v2, v8, :cond_14

    .line 24
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v3, :cond_14

    .line 25
    invoke-static {}, Lb/n/h/d;->a()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 26
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 27
    :cond_b
    :goto_2
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 28
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateChanged:Z

    .line 29
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v11, :cond_c

    .line 30
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 31
    :cond_c
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollEnable:Z

    if-nez v11, :cond_d

    .line 32
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 33
    :cond_d
    iget-boolean v11, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v11, :cond_13

    if-ne v5, v9, :cond_13

    .line 34
    invoke-static {}, Lb/n/f/a;->a()Ljava/lang/String;

    move-result-object v11

    .line 35
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_e

    move v11, v10

    goto :goto_3

    :cond_e
    move v11, v4

    .line 36
    :goto_3
    :try_start_0
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "car_mode_on"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v10, :cond_f

    move v3, v10

    goto :goto_4

    :catch_0
    const-string v13, "dispatchHoverEvent car_mode_on SettingNotFoundException"

    .line 37
    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v3, v4

    :goto_4
    if-eqz v11, :cond_10

    if-eqz v3, :cond_11

    .line 38
    :cond_10
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_11
    if-eqz v11, :cond_13

    .line 39
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v3, :cond_13

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eq v3, v12, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-ne v3, v9, :cond_13

    .line 41
    :cond_12
    invoke-static {}, Lb/n/h/d;->c()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 42
    iput-boolean v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    .line 43
    :cond_13
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v3, :cond_14

    const/4 v3, 0x3

    if-ne v5, v3, :cond_14

    .line 44
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 45
    :cond_14
    :goto_5
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-nez v3, :cond_15

    .line 46
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 47
    :cond_15
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    goto :goto_6

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    :goto_6
    float-to-int v5, v5

    if-eqz v3, :cond_17

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    goto :goto_7

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    :goto_7
    float-to-int v11, v11

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 51
    iget-boolean v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v14, :cond_18

    .line 52
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v10

    goto :goto_9

    .line 54
    :cond_18
    iget v14, v0, Landroidx/recyclerview/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    if-eqz v3, :cond_19

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    goto :goto_8

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    :goto_8
    move v15, v10

    .line 56
    :goto_9
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v10

    add-int/2addr v10, v13

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v8

    if-ge v10, v8, :cond_1a

    const/4 v8, 0x1

    goto :goto_a

    :cond_1a
    move v8, v4

    :goto_a
    if-nez v8, :cond_1e

    if-lez v13, :cond_1e

    add-int/lit8 v8, v13, -0x1

    .line 57
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v10}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v3, :cond_1b

    .line 58
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v10

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v6

    if-gt v8, v10, :cond_1d

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v10

    if-le v6, v8, :cond_1c

    goto :goto_b

    :cond_1b
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v10

    if-gt v6, v8, :cond_1d

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v10

    if-le v6, v8, :cond_1c

    goto :goto_b

    :cond_1c
    move v6, v4

    goto :goto_c

    :cond_1d
    :goto_b
    const/4 v6, 0x1

    :goto_c
    move v8, v6

    .line 63
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstChildPosition()I

    move-result v6

    if-lez v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_d

    :cond_1f
    move v6, v4

    :goto_d
    if-nez v6, :cond_22

    if-lez v13, :cond_22

    .line 64
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 65
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    if-eqz v3, :cond_20

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v6, v10, :cond_21

    goto :goto_e

    :cond_20
    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v6, v10, :cond_21

    :goto_e
    const/4 v6, 0x1

    goto :goto_f

    :cond_21
    move v6, v4

    .line 66
    :cond_22
    :goto_f
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    if-ne v10, v9, :cond_23

    const/4 v10, 0x1

    goto :goto_10

    :cond_23
    move v10, v4

    .line 67
    :goto_10
    iget v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v13, v14

    move/from16 v16, v10

    if-le v11, v13, :cond_24

    iget v13, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v13, v15, v13

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v13, v9

    if-lt v11, v13, :cond_41

    :cond_24
    if-lez v5, :cond_41

    if-eqz v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v9

    goto :goto_11

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v9

    :goto_11
    if-gt v5, v9, :cond_41

    if-nez v6, :cond_26

    if-eqz v8, :cond_41

    :cond_26
    if-lt v11, v14, :cond_27

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v9, v14

    if-gt v11, v9, :cond_27

    if-nez v6, :cond_27

    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_41

    :cond_27
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v6, v15, v6

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v6, v9

    if-lt v11, v6, :cond_28

    sub-int v6, v15, v9

    if-gt v11, v6, :cond_28

    if-nez v8, :cond_28

    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_41

    :cond_28
    if-eqz v16, :cond_29

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    if-eq v6, v12, :cond_41

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_41

    :cond_29
    if-eqz v16, :cond_41

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->isLockScreenMode()Z

    move-result v6

    if-eqz v6, :cond_2a

    goto/16 :goto_1e

    .line 70
    :cond_2a
    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v5, :cond_2b

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v5, :cond_2b

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v5, v6, :cond_2b

    .line 71
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 72
    :cond_2b
    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v5, :cond_2c

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    :cond_2c
    if-eq v2, v7, :cond_36

    const/16 v5, 0x9

    if-eq v2, v5, :cond_32

    const/16 v5, 0xa

    if-eq v2, v5, :cond_2e

    :cond_2d
    :goto_12
    const/4 v1, 0x1

    goto/16 :goto_1d

    .line 74
    :cond_2e
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 75
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    :cond_2f
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 77
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 78
    :cond_30
    invoke-static {}, Lb/n/h/d;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const-wide/16 v2, 0x0

    .line 79
    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 80
    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 81
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 82
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 83
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 84
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_31

    .line 85
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 86
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz v2, :cond_31

    .line 87
    invoke-virtual {v2, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 88
    :cond_31
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_32
    const/4 v2, 0x1

    .line 89
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-lt v11, v14, :cond_34

    .line 90
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v14, v2

    if-gt v11, v14, :cond_34

    .line 91
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    if-eqz v3, :cond_33

    .line 93
    invoke-static {}, Lb/n/h/d;->e()I

    move-result v2

    goto :goto_13

    :cond_33
    invoke-static {}, Lb/n/h/d;->g()I

    move-result v2

    :goto_13
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const/4 v1, 0x2

    .line 94
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 95
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    .line 96
    :cond_34
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v2, v15, v2

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v2, v5

    if-lt v11, v2, :cond_2d

    sub-int/2addr v15, v5

    if-gt v11, v15, :cond_2d

    .line 97
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    if-eqz v3, :cond_35

    .line 99
    invoke-static {}, Lb/n/h/d;->f()I

    move-result v2

    goto :goto_14

    :cond_35
    invoke-static {}, Lb/n/h/d;->d()I

    move-result v2

    :goto_14
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const/4 v2, 0x1

    .line 100
    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 101
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v2

    goto/16 :goto_1d

    :cond_36
    const/4 v2, 0x1

    .line 102
    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v5, :cond_37

    .line 103
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    const/16 v2, 0xa

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 105
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_37
    if-lt v11, v14, :cond_3b

    .line 106
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v14, v2

    if-gt v11, v14, :cond_3b

    .line 107
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 109
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_39

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_38

    goto :goto_16

    :cond_38
    :goto_15
    const/4 v1, 0x2

    goto :goto_18

    :cond_39
    :goto_16
    if-eqz v3, :cond_3a

    .line 110
    invoke-static {}, Lb/n/h/d;->e()I

    move-result v2

    goto :goto_17

    :cond_3a
    invoke-static {}, Lb/n/h/d;->g()I

    move-result v2

    :goto_17
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    goto :goto_15

    .line 111
    :goto_18
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 112
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    .line 113
    :cond_3b
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v2, v15, v2

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v2, v5

    if-lt v11, v2, :cond_3f

    sub-int/2addr v15, v5

    if-gt v11, v15, :cond_3f

    .line 114
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 116
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_3d

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3c

    goto :goto_1a

    :cond_3c
    :goto_19
    const/4 v1, 0x1

    goto :goto_1c

    :cond_3d
    :goto_1a
    if-eqz v3, :cond_3e

    .line 117
    invoke-static {}, Lb/n/h/d;->f()I

    move-result v2

    goto :goto_1b

    :cond_3e
    invoke-static {}, Lb/n/h/d;->d()I

    move-result v2

    :goto_1b
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    goto :goto_19

    .line 118
    :goto_1c
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollDirection:I

    .line 119
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    .line 120
    :cond_3f
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 121
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 123
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 124
    :cond_40
    invoke-static {}, Lb/n/h/d;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const-wide/16 v1, 0x0

    .line 125
    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 126
    iput-wide v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 127
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 128
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 129
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    goto/16 :goto_12

    :goto_1d
    return v1

    .line 130
    :cond_41
    :goto_1e
    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v6, :cond_42

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v6, :cond_42

    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v6, v7, :cond_42

    .line 131
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 132
    :cond_42
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 133
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    invoke-static {}, Lb/n/h/d;->a()I

    move-result v6

    invoke-direct {v0, v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 135
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_43

    .line 136
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 137
    :cond_43
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v14, v6

    if-le v11, v14, :cond_44

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v15, v6

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v15, v6

    if-lt v11, v15, :cond_46

    :cond_44
    if-lez v5, :cond_46

    if-eqz v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    goto :goto_1f

    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    :goto_1f
    if-le v5, v3, :cond_47

    .line 138
    :cond_46
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 139
    :cond_47
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v3, :cond_48

    iget-wide v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_49

    goto :goto_20

    :cond_48
    const-wide/16 v7, 0x0

    .line 140
    :goto_20
    invoke-static {}, Lb/n/h/d;->a()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 141
    :cond_49
    iput-wide v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 142
    iput-wide v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 143
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 144
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsSendHoverScrollState:Z

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4a

    .line 145
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_4a

    .line 146
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 147
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz v2, :cond_4a

    .line 148
    invoke-virtual {v2, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 149
    :cond_4a
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method dispatchLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const-string v1, "SeslRecyclerView"

    if-nez v0, :cond_0

    const-string v0, "No adapter attached; skipping layout"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_1

    const-string v0, "No layout manager attached; skipping layout"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->j:Z

    .line 6
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$z;->y1(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->q()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->n0()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->W()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$z;->y1(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$z;->y1(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 15
    :goto_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lb/f/k/k;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/f/k/k;->b(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/f/k/k;->c(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/f/k/k;->d(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .locals 8

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lb/f/k/k;->e(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/f/k/k;->f(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lb/f/k/k;->g(IIII[II)Z

    move-result p1

    return p1
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->d1(I)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$e0;

    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 4
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/p;->F(III)V

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$e0;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e0;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 13
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$r0;

    .line 3
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$r0;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Lb/f/k/t;->g0(Landroid/view/View;I)V

    .line 6
    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView$r0;->mPendingAccessibilityState:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const-string v1, "SeslRecyclerView"

    if-nez v0, :cond_0

    const-string v0, "No layout manager attached; skipping gototop & multiselection"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v5, v2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v6, v2

    const/4 v9, 0x0

    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 9
    :cond_1
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v7

    move v7, v2

    move v8, v4

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    move v8, v2

    move v7, v3

    .line 13
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    invoke-static {}, Lb/n/i/d;->c()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v10

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_17

    if-eq v0, v10, :cond_a

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v9, 0x0

    move-object v4, p0

    .line 14
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(IIIIZ)V

    goto/16 :goto_6

    .line 15
    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1b

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    goto/16 :goto_6

    .line 17
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_a

    if-ne v0, v4, :cond_5

    .line 18
    iput v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 19
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 20
    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_7

    const/4 v9, 0x0

    move-object v4, p0

    .line 21
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v10

    .line 22
    :cond_7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_8

    .line 23
    invoke-direct {p0, v5, v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return v10

    .line 24
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v4, :cond_1b

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_9

    .line 26
    iput v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 28
    invoke-direct {p0, v10}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    .line 29
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopMoved:Z

    :cond_9
    return v10

    .line 30
    :cond_a
    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_b

    .line 31
    invoke-direct {p0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->multiSelectionEnd(II)V

    .line 32
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    return v10

    .line 33
    :cond_b
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_e

    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$k0;

    if-eqz v0, :cond_c

    .line 35
    invoke-interface {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$k0;->c(II)V

    .line 36
    :cond_c
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 38
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartX:I

    .line 39
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 40
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndX:I

    .line 41
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    .line 42
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 43
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 44
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    .line 45
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 46
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 48
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v0, v10, :cond_d

    .line 52
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 53
    :cond_d
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 55
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 56
    :cond_e
    :pswitch_2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v4, :cond_15

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 58
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroidx/recyclerview/widget/RecyclerView$l0;

    if-eqz p1, :cond_f

    invoke-interface {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$l0;->a(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_f

    return v10

    :cond_f
    const-string p1, " can scroll top "

    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 63
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_10

    .line 64
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I2(II)V

    goto :goto_4

    .line 65
    :cond_10
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToping:Z

    if-lez p1, :cond_12

    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_11

    .line 68
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(II)V

    goto :goto_3

    .line 69
    :cond_11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 70
    :cond_12
    :goto_3
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 71
    :goto_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    if-eqz p1, :cond_13

    const/high16 p1, 0x43fa0000    # 500.0f

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslShowGoToTopEdge(FFI)V

    goto :goto_5

    :cond_13
    const-string p1, " There is no mTopGlow"

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_14
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslHideGoToTop()V

    .line 75
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    return v10

    .line 76
    :cond_15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopMoved:Z

    if-eqz v0, :cond_16

    .line 77
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopMoved:Z

    .line 78
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    .line 79
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 80
    :cond_16
    invoke-direct {p0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->multiSelectionEnd(II)V

    goto :goto_6

    .line 81
    :cond_17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 82
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopMoved:Z

    .line 83
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToToping:Z

    .line 84
    :cond_18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-eq v0, v4, :cond_19

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 85
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v5

    int-to-float v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 87
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v10

    .line 88
    :cond_19
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_1a

    .line 89
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    .line 90
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedPenSelection:Z

    move-object v4, p0

    .line 91
    invoke-direct/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v10

    .line 92
    :cond_1a
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_1b

    .line 93
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 94
    :cond_1b
    :goto_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v3, p1, p0, v4}, Landroidx/recyclerview/widget/RecyclerView$y;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroidx/core/widget/i;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 10
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v3, v1

    .line 11
    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 13
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    :cond_4
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroidx/core/widget/i;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 17
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 20
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v1

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 21
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 22
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroidx/core/widget/i;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    or-int/2addr v3, v4

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 25
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 27
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 28
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_a

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 30
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    :goto_7
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroidx/core/widget/i;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_8

    :cond_b
    move v4, v1

    :goto_8
    or-int/2addr v3, v4

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v3, :cond_d

    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    move v3, v2

    :cond_d
    if-eqz v3, :cond_e

    .line 35
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    .line 36
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_f

    .line 37
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 38
    :cond_f
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-nez v0, :cond_15

    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_15

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    if-nez v0, :cond_10

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    if-nez v0, :cond_10

    goto :goto_b

    .line 40
    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$z;->J()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 42
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-lt v2, v0, :cond_12

    if-gt v2, v3, :cond_12

    .line 43
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    sub-int/2addr v2, v0

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$z;->I(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 45
    :cond_11
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    .line 46
    :cond_12
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v1, :cond_13

    goto :goto_9

    :cond_13
    move v0, v1

    :goto_9
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    .line 47
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragEndY:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragStartY:I

    if-le v0, v1, :cond_14

    goto :goto_a

    :cond_14
    move v0, v1

    :goto_a
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 48
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockTop:I

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRight:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 50
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    nop

    :cond_15
    :goto_b
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/core/widget/i;->h(Landroid/view/View;)V

    .line 4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/core/widget/i;->h(Landroid/view/View;)V

    .line 4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/core/widget/i;->h(Landroid/view/View;)V

    .line 4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/core/widget/i;->h(Landroid/view/View;)V

    .line 4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/widget/i;->setSize(II)V

    :goto_0
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$o0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$q0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/n0;->i()I

    move-result v1

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0;->g()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$o0;->p:I

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/n0;->j()I

    move-result v1

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0;->h()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$o0;->q:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$o0;->p:I

    .line 6
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$o0;->q:I

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X1()I

    move-result v0

    return v0

    .line 3
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f2([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->a2()I

    move-result v0

    return v0

    .line 3
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h2([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$r0;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/d;->n(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/d;->n(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    return-object p1
.end method

.method findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 5

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    .line 5
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/d;->n(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v2

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    .line 8
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v6, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    .line 9
    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 10
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$c0;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->a(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_a

    move v1, v5

    :cond_a
    if-eqz v2, :cond_b

    or-int/lit8 v1, v1, 0x2

    .line 11
    :cond_b
    invoke-virtual {p0, v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 12
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 13
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$q0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$q0;->c(II)V

    return v5

    :cond_c
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->P0(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/16 v4, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-eqz v0, :cond_f

    const/4 v7, 0x2

    if-eq p2, v7, :cond_2

    if-ne p2, v1, :cond_f

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v7, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    .line 6
    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    move v8, v1

    goto :goto_2

    :cond_4
    move v8, v2

    .line 7
    :goto_2
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v9, :cond_6

    move p2, v0

    goto :goto_3

    :cond_5
    move v8, v2

    :cond_6
    :goto_3
    if-nez v8, :cond_c

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->Y()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-ne p2, v7, :cond_8

    move v7, v1

    goto :goto_5

    :cond_8
    move v7, v2

    :goto_5
    xor-int/2addr v0, v7

    if-eqz v0, :cond_9

    const/16 v0, 0x42

    goto :goto_6

    :cond_9
    const/16 v0, 0x11

    .line 10
    :goto_6
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    move v1, v2

    .line 11
    :goto_7
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v7, :cond_b

    move p2, v0

    :cond_b
    move v8, v1

    :cond_c
    if-eqz v8, :cond_e

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v6

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, p1, p2, v1, v7}, Landroidx/recyclerview/widget/RecyclerView$z;->I0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;)Landroid/view/View;

    .line 16
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 17
    :cond_e
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 18
    :cond_f
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    if-eqz v0, :cond_11

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 20
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    return-object v6

    .line 21
    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$z;->I0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;)Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_8

    :cond_11
    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_14

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_14

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    if-ne p2, v5, :cond_12

    if-eqz p1, :cond_12

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v1, v2, :cond_12

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    .line 27
    :cond_12
    invoke-direct {p0, v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    .line 28
    :cond_13
    :goto_9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 29
    :cond_14
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 30
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 31
    :cond_15
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    if-eqz p1, :cond_18

    if-nez v0, :cond_18

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_18

    if-ne p2, v4, :cond_16

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    :goto_a
    sub-int/2addr p1, p2

    goto :goto_b

    :cond_16
    if-ne p2, v5, :cond_17

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    goto :goto_a

    :cond_17
    move p1, v2

    .line 34
    :goto_b
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {p2, p1, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H2(ILandroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;)I

    .line 35
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsArrowKeyPressed:Z

    :cond_18
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->D()Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->E(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->F(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    return-object v0
.end method

.method getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$r0;)I
    .locals 1

    const/16 v0, 0x20c

    .line 1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->mPosition:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a;->e(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->G()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$r0;)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->mPosition:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getAdapterPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$u;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a(II)I

    move-result p1

    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getItemId()J

    move-result-wide v1

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->getLayoutPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    return-object p1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroidx/recyclerview/widget/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/n;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$v;

    return-object v0
.end method

.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 2
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Z

    if-nez v1, :cond_0

    .line 3
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:Landroid/graphics/Rect;

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o0;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:Landroid/graphics/Rect;

    return-object p1

    .line 6
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->b:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 9
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v5, v6, p1, p0, v7}, Landroidx/recyclerview/widget/RecyclerView$y;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;)V

    .line 11
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 12
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 13
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 14
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Z

    return-object v1
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$y;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$y;

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    return-object v0
.end method

.method public final getLongPressMultiSelectionListener()Landroidx/recyclerview/widget/RecyclerView$k0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$k0;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$f0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->i()Landroidx/recyclerview/widget/RecyclerView$f0;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/f/k/k;->k()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/f/k/k;->l(I)Z

    move-result p1

    return p1
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->p()Z

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

.method initAdapterManager()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/a;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/a$a;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/g;

    sget v2, Lb/m/c;->fastscroll_default_thickness:I

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Lb/m/c;->fastscroll_minimum_range:I

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Lb/m/c;->fastscroll_margin:I

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroidx/core/widget/i;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroidx/core/widget/i;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroidx/core/widget/i;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->g(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isInScrollingContainer()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 3
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutSuppressed()Z

    move-result v0

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/f/k/k;->m()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->w1(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$a0;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->s()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    .line 4
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->t()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 4
    invoke-virtual {v3, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->offsetPosition(IZ)V

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g0;->u(II)V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, p1

    move v3, p2

    move v2, v1

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_4

    .line 2
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 3
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$r0;->mPosition:I

    if-lt v8, v3, :cond_3

    if-le v8, v4, :cond_1

    goto :goto_3

    :cond_1
    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    .line 4
    invoke-virtual {v7, v8, v5}, Landroidx/recyclerview/widget/RecyclerView$r0;->offsetPosition(IZ)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v7, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$r0;->offsetPosition(IZ)V

    .line 6
    :goto_2
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v1, v7, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g0;->v(II)V

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    .line 1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/d;->j()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 5
    invoke-virtual {v3, v4, p3}, Landroidx/recyclerview/widget/RecyclerView$r0;->offsetPosition(IZ)V

    .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    goto :goto_1

    :cond_0
    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 7
    invoke-virtual {v3, v4, v6, p3}, Landroidx/recyclerview/widget/RecyclerView$r0;->flagRemovedAndOffsetPosition(IIZ)V

    .line 8
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$o0;->g:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$g0;->w(IIZ)V

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 4
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$z;->z(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 8
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Landroidx/recyclerview/widget/h;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/h;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/h;

    invoke-direct {v0}, Landroidx/recyclerview/widget/h;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    .line 11
    invoke-static {p0}, Lb/f/k/t;->n(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    move v2, v0

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v2

    float-to-long v2, v3

    iput-wide v2, v0, Landroidx/recyclerview/widget/h;->d:J

    .line 15
    sget-object v2, Landroidx/recyclerview/widget/h;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->Y()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/p;->O(I)V

    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->k()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->A(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$g0;)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/s;->j()V

    .line 11
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/h;->j(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawOutlineStroke:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokeHeight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokeHeight:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$y;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v2, p1, p0, v3}, Landroidx/recyclerview/widget/RecyclerView$y;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStatisticalCount:I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_5

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrevLatencyTime:J

    sub-long/2addr v1, v3

    long-to-float p1, v1

    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    const v2, 0x418547ae    # 16.66f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    move p1, v2

    :cond_2
    add-float/2addr v1, p1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    .line 10
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrevLatencyTime:J

    .line 11
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStatisticalCount:I

    if-ne p1, v0, :cond_4

    .line 12
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calculated latency result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeslRecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStatisticalCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStatisticalCount:I

    :cond_5
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 2

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsMouseWheel:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_0

    :cond_2
    move v2, v4

    .line 8
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    .line 9
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/high16 v5, 0x400000

    and-int/2addr v2, v5

    if-eqz v2, :cond_6

    const/16 v2, 0x1a

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 12
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v5

    if-eqz v5, :cond_5

    neg-float v2, v2

    goto :goto_1

    .line 13
    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v2

    move v2, v4

    goto :goto_2

    :cond_6
    move v2, v4

    move v5, v2

    :goto_2
    cmpl-float v6, v2, v4

    if-nez v6, :cond_7

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_9

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move v3, v0

    .line 14
    :goto_3
    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 15
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v0, v5

    float-to-int v7, v0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, v2

    float-to-int v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 16
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v5, v0

    float-to-int v0, v5

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_9
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$d0;

    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v3

    .line 8
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 13
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 14
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz v7, :cond_4

    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/p;->D(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v2

    :cond_4
    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v4, :cond_15

    if-eq v4, v2, :cond_14

    if-eq v4, v7, :cond_8

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    const/4 v0, 0x5

    if-eq v4, v0, :cond_6

    const/4 v0, 0x6

    if-eq v4, v0, :cond_5

    goto/16 :goto_7

    .line 15
    :cond_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 16
    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 17
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 18
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_7

    .line 19
    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_7

    .line 20
    :cond_8
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_9

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeslRecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 22
    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 23
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    .line 24
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v4, v5

    .line 25
    iget v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v7, p1

    .line 26
    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v8, v2, :cond_e

    if-eqz v0, :cond_b

    .line 27
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_b

    if-lez v4, :cond_a

    sub-int/2addr v4, v9

    goto :goto_0

    :cond_a
    add-int/2addr v4, v9

    :goto_0
    move v8, v2

    goto :goto_1

    :cond_b
    move v8, v1

    :goto_1
    if-eqz v3, :cond_d

    .line 28
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v9, v10, :cond_d

    if-lez v7, :cond_c

    sub-int/2addr v7, v10

    goto :goto_2

    :cond_c
    add-int/2addr v7, v10

    :goto_2
    move v8, v2

    :cond_d
    if-eqz v8, :cond_e

    .line 29
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 30
    :cond_e
    iget v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v8, v2, :cond_13

    .line 31
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v8, v1

    sub-int/2addr v5, v9

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 32
    aget v5, v8, v2

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 33
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopMoved:Z

    if-nez p1, :cond_11

    if-eqz v0, :cond_f

    move p1, v4

    goto :goto_3

    :cond_f
    move p1, v1

    :goto_3
    if-eqz v3, :cond_10

    move v0, v7

    goto :goto_4

    :cond_10
    move v0, v1

    :goto_4
    invoke-virtual {p0, p1, v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 35
    :cond_11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    if-eqz p1, :cond_13

    if-nez v4, :cond_12

    if-eqz v7, :cond_13

    .line 36
    :cond_12
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    invoke-virtual {p1, p0, v4, v7}, Landroidx/recyclerview/widget/h;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 37
    :cond_13
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    goto :goto_7

    .line 38
    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 39
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto :goto_7

    .line 40
    :cond_15
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_16

    .line 41
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 42
    :cond_16
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 45
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    if-eqz v4, :cond_18

    const/16 v4, 0x4002

    .line 46
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 47
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslPagingTouchSlop:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_5

    .line 48
    :cond_17
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslTouchSlop:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 49
    :cond_18
    :goto_5
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v7, :cond_19

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 51
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 52
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 53
    :cond_19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, p1, v2

    aput v1, p1, v1

    .line 54
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz p1, :cond_1a

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_1a
    if-eqz v0, :cond_1b

    move p1, v2

    goto :goto_6

    :cond_1b
    move p1, v1

    :goto_6
    if-eqz v3, :cond_1c

    or-int/lit8 p1, p1, 0x2

    .line 56
    :cond_1c
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 57
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    .line 58
    :goto_7
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x71

    if-eq p1, v0, :cond_2

    const/16 v0, 0x72

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 5
    :cond_2
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->pageScroll(I)Z

    .line 10
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    .line 2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const-string p2, "RV OnLayout"

    .line 1
    invoke-static {p2}, Lb/f/g/b;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 3
    invoke-static {}, Lb/f/g/b;->b()V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 5
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz p3, :cond_0

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result p5

    invoke-virtual {p3, p4, p5}, Landroidx/recyclerview/widget/p;->E(II)V

    :cond_0
    if-eqz p1, :cond_4

    .line 7
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mSizeChnage:Z

    const/4 p1, -0x1

    .line 8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 9
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_3

    .line 12
    instance-of p4, p3, Landroid/view/ViewGroup;

    if-eqz p4, :cond_3

    .line 13
    instance-of p4, p3, Lb/f/k/l;

    if-eqz p4, :cond_2

    const-string p4, "CoordinatorLayout"

    .line 14
    invoke-direct {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->findSuperClass(Landroid/view/ViewParent;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 15
    check-cast p3, Landroid/view/ViewGroup;

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 16
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    aget p4, p4, p2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p4, p3

    .line 17
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 18
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mWindowOffsets:[I

    aget p3, p3, p2

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    iget p5, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    sub-int/2addr p4, p5

    sub-int/2addr p3, p4

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez p3, :cond_1

    .line 20
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 21
    :cond_1
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    .line 22
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {p3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    goto :goto_0

    .line 24
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-nez p2, :cond_4

    .line 25
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 26
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 27
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNestedScrollRange:I

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->r0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 10
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 11
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v4, v5, v6, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->Y0(Landroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v2, v1

    :cond_1
    if-nez v2, :cond_4

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-nez v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->e:I

    if-ne v0, v1, :cond_3

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 15
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->z1(II)V

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->j:Z

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->C1(II)V

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->F1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 23
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$z;->z1(II)V

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->j:Z

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->C1(II)V

    goto :goto_4

    :cond_4
    :goto_0
    return-void

    .line 27
    :cond_5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_6

    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->Y0(Landroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;II)V

    return-void

    .line 29
    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_8

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->l:Z

    if-eqz v3, :cond_7

    .line 35
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->h:Z

    goto :goto_1

    .line 36
    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->j()V

    .line 37
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->h:Z

    .line 38
    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 39
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    .line 40
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->l:Z

    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 42
    :cond_9
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_a

    .line 43
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$o0;->f:I

    goto :goto_3

    .line 44
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->f:I

    .line 45
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 46
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->Y0(Landroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;II)V

    .line 47
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 48
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$o0;->h:Z

    :cond_b
    :goto_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->b:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$z;->b1(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mApproxLatency:F

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mStatisticalCount:I

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Landroidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SavedState;->a(Landroidx/recyclerview/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$z;->c1()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->b:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$SavedState;->b:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/p;->H(IIII)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v8, 0x0

    if-nez v0, :cond_25

    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    return v9

    .line 4
    :cond_1
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_2

    return v8

    .line 5
    :cond_2
    iput-boolean v8, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsMouseWheel:Z

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v10

    .line 7
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v11

    .line 8
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_4

    .line 12
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v8, v2, v9

    aput v8, v2, v8

    .line 13
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 14
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v2, v8

    int-to-float v3, v3

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 15
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    const/4 v3, 0x2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/p;->J(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEventListener:Landroidx/recyclerview/widget/RecyclerView$j0;

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_6

    :cond_5
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->m()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-ne v0, v9, :cond_6

    .line 19
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEventListener:Landroidx/recyclerview/widget/RecyclerView$j0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->p()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$j0;->b(F)V

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v9, :cond_7

    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->m()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-nez v0, :cond_7

    .line 22
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEventListener:Landroidx/recyclerview/widget/RecyclerView$j0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/p;->p()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$j0;->a(F)V

    .line 23
    :cond_7
    :goto_0
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_8
    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1f

    const-string v4, "SeslRecyclerView"

    if-eq v0, v9, :cond_19

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    const/4 v3, 0x5

    if-eq v0, v3, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    goto/16 :goto_a

    .line 24
    :cond_9
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 25
    :cond_a
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 26
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 27
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_a

    .line 28
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_a

    .line 29
    :cond_c
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_d

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 31
    :cond_d
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 32
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v14, v0

    .line 33
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int v15, v0, v13

    .line 34
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int v5, v0, v14

    .line 35
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v3, v8

    .line 36
    aput v8, v3, v9

    .line 37
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v5

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v8

    sub-int/2addr v15, v1

    .line 39
    aget v1, v0, v9

    move/from16 v2, v17

    sub-int v5, v2, v1

    .line 40
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v2, v1, v8

    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v3, v8

    add-int/2addr v2, v4

    aput v2, v1, v8

    .line 41
    aget v2, v1, v9

    aget v3, v3, v9

    add-int/2addr v2, v3

    aput v2, v1, v9

    .line 42
    aget v0, v0, v9

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    goto :goto_1

    :cond_e
    move/from16 v2, v17

    .line 43
    invoke-direct {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    move v5, v2

    .line 44
    :goto_1
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v0, v9, :cond_13

    if-eqz v10, :cond_10

    .line 45
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v1, :cond_10

    if-lez v15, :cond_f

    sub-int/2addr v15, v1

    goto :goto_2

    :cond_f
    add-int/2addr v15, v1

    :goto_2
    move v0, v9

    goto :goto_3

    :cond_10
    move v0, v8

    :goto_3
    if-eqz v11, :cond_12

    .line 46
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v1, v2, :cond_12

    if-lez v5, :cond_11

    sub-int/2addr v5, v2

    goto :goto_4

    :cond_11
    add-int/2addr v5, v2

    :goto_4
    move v0, v9

    :cond_12
    if-eqz v0, :cond_13

    .line 47
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 48
    :cond_13
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v0, v9, :cond_23

    .line 49
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v0, v8

    sub-int/2addr v13, v1

    iput v13, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 50
    aget v0, v0, v9

    sub-int/2addr v14, v0

    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 52
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 53
    iput-boolean v9, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    return v8

    .line 54
    :cond_14
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopMoved:Z

    if-nez v0, :cond_17

    if-eqz v10, :cond_15

    move v0, v15

    goto :goto_5

    :cond_15
    move v0, v8

    :goto_5
    if-eqz v11, :cond_16

    move v1, v5

    goto :goto_6

    :cond_16
    move v1, v8

    :goto_6
    invoke-virtual {v6, v0, v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 56
    :cond_17
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    if-eqz v0, :cond_23

    if-nez v15, :cond_18

    if-eqz v5, :cond_23

    .line 57
    :cond_18
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    invoke-virtual {v0, v6, v15, v5}, Landroidx/recyclerview/widget/h;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_a

    .line 58
    :cond_19
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 59
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v0, 0x0

    if-eqz v10, :cond_1a

    .line 60
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_7

    :cond_1a
    move v1, v0

    :goto_7
    if-eqz v11, :cond_1b

    .line 62
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_8

    :cond_1b
    move v2, v0

    :goto_8
    cmpl-float v3, v1, v0

    if-nez v3, :cond_1c

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1d

    :cond_1c
    float-to-int v0, v1

    float-to-int v1, v2

    .line 64
    invoke-virtual {v6, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 65
    :cond_1d
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 66
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchUp() velocity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", last move skip : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Landroidx/recyclerview/widget/RecyclerView;->mIsSkipMoveEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->resetScroll()V

    move v8, v9

    goto :goto_a

    .line 68
    :cond_1f
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 71
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_20

    .line 72
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_20
    if-eqz v10, :cond_21

    move v0, v9

    goto :goto_9

    :cond_21
    move v0, v8

    :goto_9
    if-eqz v11, :cond_22

    or-int/lit8 v0, v0, 0x2

    .line 73
    :cond_22
    invoke-virtual {v6, v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_23
    :goto_a
    if-nez v8, :cond_24

    .line 74
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 75
    :cond_24
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_25
    :goto_b
    return v8
.end method

.method postAnimationRunner()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lb/f/k/t;->T(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 1
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$r0;->setFlags(II)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$o0;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Landroidx/recyclerview/widget/RecyclerView$r0;)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2, v0, v1, p1}, Landroidx/recyclerview/widget/s;->c(JLandroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/s;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/s;->e(Landroidx/recyclerview/widget/RecyclerView$r0;Landroidx/recyclerview/widget/RecyclerView$w$c;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->j1(Landroidx/recyclerview/widget/RecyclerView$g0;)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->k1(Landroidx/recyclerview/widget/RecyclerView$g0;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->c()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g0;->J(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g0;->C(Landroidx/recyclerview/widget/RecyclerView$r0;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->clearTmpDetachFlag()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->g(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$y;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$d0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$d0;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$r0;

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 9
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 11
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->a1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$z;->q1(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$d0;

    .line 3
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->c(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r0;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v12, v0, v12

    .line 4
    aput v12, v0, v11

    .line 5
    invoke-virtual {v7, v8, v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 6
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v12

    .line 7
    aget v0, v0, v11

    sub-int v2, v8, v1

    sub-int v3, v9, v0

    move v13, v0

    move v14, v1

    move v15, v2

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    .line 8
    :goto_0
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 10
    :cond_1
    iget-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsMouseWheel:Z

    if-eqz v0, :cond_2

    if-gez v6, :cond_2

    move v0, v12

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    if-eqz v10, :cond_3

    const/16 v1, 0x2002

    .line 11
    invoke-static {v10, v1}, Lb/f/k/h;->a(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v16, v11

    goto :goto_2

    :cond_3
    move/from16 v16, v12

    :goto_2
    const/4 v5, 0x2

    if-eqz v0, :cond_6

    .line 12
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    iget-boolean v3, v7, Landroidx/recyclerview/widget/RecyclerView;->mIsMouseWheel:Z

    move-object/from16 v0, p0

    move v1, v14

    move v2, v13

    move/from16 v17, v3

    move v3, v15

    move-object/from16 v18, v4

    move v4, v6

    move-object/from16 v5, v18

    move/from16 v19, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v1, v12

    sub-int/2addr v0, v2

    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 14
    iget v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    aget v2, v1, v11

    sub-int/2addr v0, v2

    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    if-eqz v10, :cond_4

    .line 15
    iget-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mGlowByDragging:Z

    if-nez v0, :cond_4

    aget v0, v1, v11

    if-nez v0, :cond_4

    if-nez v16, :cond_4

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move/from16 v3, v19

    int-to-float v3, v3

    invoke-direct {v7, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    .line 18
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 19
    :cond_4
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v12

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v2, v12

    add-int/2addr v1, v3

    aput v1, v0, v12

    .line 20
    aget v1, v0, v11

    aget v2, v2, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    goto :goto_4

    :cond_5
    move/from16 v3, v19

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    move v1, v5

    move v3, v6

    .line 21
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 22
    iget-boolean v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mGlowByDragging:Z

    if-nez v0, :cond_7

    if-eqz v10, :cond_7

    if-nez v16, :cond_7

    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v3

    invoke-direct {v7, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    .line 24
    :cond_7
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_8
    :goto_4
    if-nez v14, :cond_9

    if-eqz v13, :cond_a

    .line 25
    :cond_9
    invoke-virtual {v7, v14, v13}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 26
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 28
    :cond_b
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    .line 29
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 30
    :cond_c
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$z;->d1(I)V

    :cond_d
    if-nez v14, :cond_f

    if-eqz v13, :cond_e

    goto :goto_5

    :cond_e
    move v11, v12

    :cond_f
    :goto_5
    return v11
.end method

.method scrollStep(II[I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    .line 3
    invoke-static {v0}, Lb/f/g/b;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Landroidx/recyclerview/widget/RecyclerView$o0;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v1, p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$z;->v1(ILandroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v2, p2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$z;->x1(ILandroidx/recyclerview/widget/RecyclerView$g0;Landroidx/recyclerview/widget/RecyclerView$o0;)I

    move-result p2

    .line 7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    if-nez v2, :cond_2

    .line 8
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 9
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    goto :goto_1

    :cond_1
    move p2, v0

    .line 10
    :cond_2
    :goto_1
    invoke-static {}, Lb/f/g/b;->b()V

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    if-eqz p3, :cond_3

    .line 14
    aput p1, p3, v0

    .line 15
    aput p2, p3, v1

    :cond_3
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p1, "SeslRecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_1

    const-string p1, "SeslRecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->w1(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/p;->F(III)V

    :cond_2
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public seslFindNearChildViewUnder(FF)Landroid/view/View;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->g()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move v5, v0

    move v7, v1

    move v6, v3

    :goto_0
    if-ltz v5, :cond_2

    .line 2
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 4
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v9, v8

    .line 5
    div-int/lit8 v9, v9, 0x2

    if-ne v6, v9, :cond_0

    goto :goto_1

    :cond_0
    sub-int v6, v1, v9

    .line 6
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_2

    move v4, v6

    move v6, v9

    move v7, v6

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    move v6, v0

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_2
    if-ltz v6, :cond_9

    .line 7
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 9
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 10
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-ne v6, v0, :cond_3

    sub-int v1, v2, v11

    .line 12
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v1, v2, v8

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move v4, v0

    move v5, v4

    :cond_3
    if-lt v7, v9, :cond_5

    if-gt v7, v10, :cond_5

    sub-int v9, v2, v11

    .line 14
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v8, v2, v8

    .line 15
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v9, v3, :cond_4

    move v4, v6

    move v3, v9

    :cond_4
    if-gt v8, v1, :cond_5

    move v5, v6

    move v1, v8

    :cond_5
    if-gt v7, v10, :cond_6

    if-nez v6, :cond_8

    :cond_6
    if-ge v3, v1, :cond_7

    .line 16
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 17
    :cond_7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/d;->f(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 18
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findNearChildViewUnder didn\'t find valid child view! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SeslRecyclerView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public seslGetGoToTopBottomPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    return v0
.end method

.method public seslGetHoverBottomPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    return v0
.end method

.method public seslGetHoverTopPadding()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    return v0
.end method

.method public final seslGetOnMultiSelectedListener()Landroidx/recyclerview/widget/RecyclerView$m0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Landroidx/recyclerview/widget/RecyclerView$m0;

    return-object v0
.end method

.method public seslHideGoToTop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public seslInitConfigurations(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslTouchSlop:I

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslPagingTouchSlop:I

    .line 6
    invoke-static {v0, p1}, Lb/f/k/u;->b(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 7
    invoke-static {v0, p1}, Lb/f/k/u;->d(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 10
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v2, 0x41c80000    # 25.0f

    .line 11
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 13
    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    .line 14
    sget p1, Lb/m/c;->sesl_go_to_top_scrollable_view_gap:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    .line 15
    sget p1, Lb/m/c;->sesl_go_to_top_scrollable_view_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopSize:I

    .line 16
    sget p1, Lb/m/c;->sesl_navigation_bar_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mNavigationBarHeight:I

    .line 17
    sget p1, Lb/m/c;->sesl_round_stroke_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mStrokeHeight:I

    return-void
.end method

.method public seslIsFastScrollerEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEnabled:Z

    return v0
.end method

.method public seslIsPagingTouchSlopForStylusEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    return v0
.end method

.method public seslSetCtrlkeyPressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    return-void
.end method

.method public seslSetFastScrollerEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->N(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/p;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/p;->N(Z)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/p;->O(I)V

    .line 6
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEnabled:Z

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScroller:Landroidx/recyclerview/widget/p;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->Z()V

    :cond_2
    return-void
.end method

.method public seslSetFastScrollerEventListener(Landroidx/recyclerview/widget/RecyclerView$j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFastScrollerEventListener:Landroidx/recyclerview/widget/RecyclerView$j0;

    return-void
.end method

.method public seslSetFillBottomColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslRoundedCorner:Lb/a/n/d;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lb/a/n/b;->e(II)V

    :cond_0
    return-void
.end method

.method public seslSetFillBottomEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    .line 3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/m/b;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public seslSetGoToTopBottomPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopBottomPadding:I

    return-void
.end method

.method public seslSetGoToTopEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    return-void
.end method

.method public seslSetGoToTopEnabled(ZZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lb/m/d;->sesl_list_go_to_top_dark:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 5
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x14d

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/RecyclerView$p;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [I

    .line 9
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public seslSetHoverBottomPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverBottomAreaHeight:I

    return-void
.end method

.method public seslSetHoverScrollEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollEnable:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public seslSetHoverTopPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHoverTopAreaHeight:I

    return-void
.end method

.method public seslSetLastItemOutlineStrokeEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public seslSetLastOutlineStrokeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    return-void
.end method

.method public seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/RecyclerView$k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$k0;

    return-void
.end method

.method public seslSetOnGoToTopClickListener(Landroidx/recyclerview/widget/RecyclerView$l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroidx/recyclerview/widget/RecyclerView$l0;

    return-void
.end method

.method public seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/RecyclerView$m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Landroidx/recyclerview/widget/RecyclerView$m0;

    return-void
.end method

.method public seslSetOutlineStrokeEnabled(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOutlineStrokeEnabled(ZZ)V

    return-void
.end method

.method public seslSetOutlineStrokeEnabled(ZZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawOutlineStroke:Z

    .line 4
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawWhiteTheme:Z

    .line 5
    new-instance p1, Lb/a/n/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lb/a/n/d;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mSeslRoundedCorner:Lb/a/n/d;

    const/16 p2, 0xc

    .line 6
    invoke-virtual {p1, p2}, Lb/a/n/b;->f(I)V

    .line 7
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lb/m/b;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public seslSetPagingTouchSlopForStylus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    return-void
.end method

.method public seslSetPenSelectionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    return-void
.end method

.method public seslSetSmoothScrollEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$q0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/n0;->l(Z)V

    :cond_0
    return-void
.end method

.method public seslShowGoToTopEdge(FFI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroidx/core/widget/i;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/widget/i;->g(FFI)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x1f4

    invoke-virtual {p0, p2, p2, p1, p3}, Landroid/view/ViewGroup;->invalidate(IIII)V

    return-void
.end method

.method public seslStartLongPressMultiSelection()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/n;

    .line 2
    invoke-static {p0, p1}, Lb/f/k/t;->X(Landroid/view/View;Lb/f/k/a;)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$r;ZZ)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$u;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$r0;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->mPendingAccessibilityState:I

    .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lb/f/k/t;->g0(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/f/j/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->k()V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$w;->t(Landroidx/recyclerview/widget/RecyclerView$w$b;)V

    .line 4
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Landroidx/recyclerview/widget/RecyclerView$w$b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$w;->t(Landroidx/recyclerview/widget/RecyclerView$w$b;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g0;->G(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawRect:Z

    .line 4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawOutlineStroke:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawOutlineStroke:Z

    .line 5
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->k()V

    .line 10
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->j1(Landroidx/recyclerview/widget/RecyclerView$g0;)V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->k1(Landroidx/recyclerview/widget/RecyclerView$g0;)V

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->c()V

    .line 13
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->A(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$g0;)V

    .line 15
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->D1(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 16
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    goto :goto_3

    .line 17
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g0;->c()V

    .line 18
    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->o()V

    .line 19
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz p1, :cond_8

    .line 20
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$z;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_7

    .line 21
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$z;->D1(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 22
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$z;->z(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_4

    .line 24
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$z;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_8
    :goto_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g0;->K()V

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/f/k/k;->n(Z)V

    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$e0;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$e0;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$f0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g0;->E(Landroidx/recyclerview/widget/RecyclerView$f0;)V

    return-void
.end method

.method public setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/RecyclerView$h0;

    return-void
.end method

.method setScrollState(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting scroll state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGlowByDragging:Z

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsNeedCheckLatency:Z

    :cond_2
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): slopConstant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPagingTouchSlopForStylus(Z)V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$p0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g0;->F(Landroidx/recyclerview/widget/RecyclerView$p0;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lb/f/k/c0/b;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    .line 3
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method showGoToTop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setupGoToTop(I)V

    .line 3
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->autoHide(I)V

    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 7
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$q0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$q0;->j(IILandroid/view/animation/Interpolator;)V

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->showGoToTop()V

    :cond_5
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v0, :cond_1

    const-string p1, "SeslRecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v0, p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$z;->H1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;I)V

    return-void
.end method

.method startInterceptRequestLayout()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/f/k/k;->p(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/f/k/k;->q(II)Z

    move-result p1

    return p1
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_1

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 5
    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 8
    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez p1, :cond_3

    .line 9
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 10
    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/f/k/k;->r()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Lb/f/k/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/f/k/k;->s(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 8
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 11
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$r;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$r;ZZ)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->j()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->i(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$r0;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$r0;->mPosition:I

    if-lt v5, p1, :cond_1

    if-ge v5, v1, :cond_1

    const/4 v5, 0x2

    .line 6
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$r0;->addFlags(I)V

    .line 7
    invoke-virtual {v4, p3}, Landroidx/recyclerview/widget/RecyclerView$r0;->addChangePayload(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$a0;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$a0;->c:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$g0;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g0;->M(II)V

    return-void
.end method
