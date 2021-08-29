.class Landroidx/recyclerview/widget/p;
.super Ljava/lang/Object;
.source "SeslRecyclerViewFastScroller.java"


# static fields
.field private static final l0:J

.field private static m0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static n0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static o0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static p0:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:Landroid/animation/AnimatorSet;

.field private E:Landroid/animation/AnimatorSet;

.field private F:Z

.field private G:Z

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Z

.field private M:[Ljava/lang/Object;

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:Landroidx/recyclerview/widget/RecyclerView$r;

.field private R:Landroid/widget/SectionIndexer;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:I

.field private W:I

.field private X:Z

.field private Y:F

.field private Z:J

.field private final a:Landroid/graphics/Rect;

.field private a0:I

.field private final b:Landroid/graphics/Rect;

.field private b0:I

.field private final c:Landroid/graphics/Rect;

.field private c0:I

.field private final d:Landroidx/recyclerview/widget/RecyclerView;

.field private d0:I

.field private final e:Landroid/widget/TextView;

.field private e0:F

.field private final f:Landroid/widget/TextView;

.field private f0:I

.field private final g:Landroid/widget/ImageView;

.field private g0:F

.field private final h:Landroid/widget/ImageView;

.field private h0:F

.field private final i:Landroid/view/View;

.field private i0:I

.field private j:Landroid/content/Context;

.field private final j0:Ljava/lang/Runnable;

.field private final k:[I

.field private final k0:Landroid/animation/Animator$AnimatorListener;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:Landroid/content/res/ColorStateList;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroidx/recyclerview/widget/p;->l0:J

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/p$c;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/p$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/p;->m0:Landroid/util/Property;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/p$d;

    const-string v1, "top"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/p$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/p;->n0:Landroid/util/Property;

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/p$e;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/p$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/p;->o0:Landroid/util/Property;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/p$f;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/p$f;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/p;->p0:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->b:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Landroidx/recyclerview/widget/p;->k:[I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/p;->J:I

    .line 7
    iput v0, p0, Landroidx/recyclerview/widget/p;->K:I

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Landroidx/recyclerview/widget/p;->Z:J

    .line 9
    iput v0, p0, Landroidx/recyclerview/widget/p;->d0:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/p;->e0:F

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Landroidx/recyclerview/widget/p;->f0:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 12
    iput v2, p0, Landroidx/recyclerview/widget/p;->g0:F

    .line 13
    iput v0, p0, Landroidx/recyclerview/widget/p;->h0:F

    .line 14
    new-instance v2, Landroidx/recyclerview/widget/p$a;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/p$a;-><init>(Landroidx/recyclerview/widget/p;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/p;->j0:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Landroidx/recyclerview/widget/p$b;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/p$b;-><init>(Landroidx/recyclerview/widget/p;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/p;->k0:Landroid/animation/Animator$AnimatorListener;

    .line 16
    iput-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->b0:I

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->c0:I

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    .line 20
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->a0:I

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->W:I

    const/4 v2, 0x1

    .line 22
    iput-boolean v2, p0, Landroidx/recyclerview/widget/p;->G:Z

    .line 23
    iput v2, p0, Landroidx/recyclerview/widget/p;->O:I

    .line 24
    iget-object v3, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroidx/recyclerview/widget/p;->X:Z

    .line 25
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    .line 26
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    .line 28
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    .line 30
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->l(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->l(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lb/m/f;->FastScroll:[I

    sget v5, Lb/m/e;->Widget_RecyclerView_FastScroll:I

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    sget v3, Lb/m/f;->FastScroll_position:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/recyclerview/widget/p;->V:I

    .line 35
    iget-object v3, p0, Landroidx/recyclerview/widget/p;->k:[I

    sget v4, Lb/m/f;->FastScroll_backgroundLeft:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v1

    .line 36
    iget-object v3, p0, Landroidx/recyclerview/widget/p;->k:[I

    sget v4, Lb/m/f;->FastScroll_backgroundRight:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    .line 37
    sget v2, Lb/m/f;->FastScroll_thumbDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/recyclerview/widget/p;->w:Landroid/graphics/drawable/Drawable;

    .line 38
    sget v2, Lb/m/f;->FastScroll_trackDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/recyclerview/widget/p;->x:Landroid/graphics/drawable/Drawable;

    .line 39
    sget v2, Lb/m/f;->FastScroll_android_textAppearance:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->y:I

    .line 40
    sget v2, Lb/m/f;->FastScroll_android_textColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroidx/recyclerview/widget/p;->v:Landroid/content/res/ColorStateList;

    .line 41
    sget v2, Lb/m/f;->FastScroll_android_textSize:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->u:F

    .line 42
    sget v2, Lb/m/f;->FastScroll_android_minWidth:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->m:I

    .line 43
    sget v2, Lb/m/f;->FastScroll_android_minHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->n:I

    .line 44
    sget v2, Lb/m/f;->FastScroll_thumbMinWidth:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->o:I

    .line 45
    sget v2, Lb/m/f;->FastScroll_thumbMinHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->p:I

    .line 46
    sget v2, Lb/m/f;->FastScroll_android_padding:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->l:I

    .line 47
    sget v2, Lb/m/f;->FastScroll_thumbPosition:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->z:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->X()V

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 52
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 53
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 54
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 55
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    sget v2, Lb/m/c;->sesl_fast_scroll_preview_margin_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->q:I

    .line 58
    sget v2, Lb/m/c;->sesl_fast_scroll_thumb_margin_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->r:I

    .line 59
    sget v2, Lb/m/c;->sesl_fast_scroll_additional_touch_area:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->h0:F

    .line 60
    sget v2, Lb/m/c;->sesl_fast_scroller_track_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/p;->s:I

    .line 61
    sget v2, Lb/m/c;->sesl_fast_scroller_additional_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/p;->t:I

    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    iget v2, p0, Landroidx/recyclerview/widget/p;->l:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    iget v2, p0, Landroidx/recyclerview/widget/p;->l:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->q()V

    .line 65
    iget v0, p0, Landroidx/recyclerview/widget/p;->c0:I

    iget v1, p0, Landroidx/recyclerview/widget/p;->b0:I

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/p;->a0(II)V

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p;->O(I)V

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->K()V

    const/16 p1, 0x1a

    .line 68
    invoke-static {p1}, Lb/n/h/a;->a(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/p;->i0:I

    return-void
.end method

.method private A(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    move v1, p2

    move v2, v1

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 3
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 4
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v1, v4, v1

    sub-int/2addr v1, p2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, -0x80000000

    .line 8
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 9
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 10
    invoke-static {v1, v0}, Lb/n/h/f$a;->a(II)I

    move-result v0

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 14
    div-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v2

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr v4, v0

    .line 16
    div-int/lit8 v4, v4, 0x2

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    .line 17
    invoke-virtual {p3, v4, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private B(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->b:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6
    iget v1, p0, Landroidx/recyclerview/widget/p;->V:I

    if-nez v1, :cond_0

    .line 7
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/p;->A(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/recyclerview/widget/p;->C(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private C(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-boolean p3, p0, Landroidx/recyclerview/widget/p;->S:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 2
    iget p3, p0, Landroidx/recyclerview/widget/p;->r:I

    goto :goto_0

    .line 3
    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/p;->q:I

    :goto_0
    move v1, p3

    move p3, v0

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 4
    iget p3, p0, Landroidx/recyclerview/widget/p;->r:I

    goto :goto_1

    .line 5
    :cond_2
    iget p3, p0, Landroidx/recyclerview/widget/p;->q:I

    :goto_1
    move v1, v0

    .line 6
    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez p2, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/p;->S:Z

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 11
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, p3

    sub-int/2addr v3, v1

    .line 12
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x80000000

    .line 13
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 14
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 15
    invoke-static {v4, v0}, Lb/n/h/f$a;->a(II)I

    move-result v4

    .line 16
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 18
    iget-boolean v4, p0, Landroidx/recyclerview/widget/p;->S:Z

    if-eqz v4, :cond_6

    if-nez p2, :cond_5

    .line 19
    iget p2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_4
    sub-int/2addr p2, v1

    sub-int p3, p2, v3

    goto :goto_6

    :cond_6
    if-nez p2, :cond_7

    .line 20
    iget p2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_5
    add-int/2addr p3, p2

    add-int p2, p3, v3

    .line 21
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    .line 22
    invoke-virtual {p4, p3, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private I(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/p;->P(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/p;->O:I

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->K()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 6
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/p;->P(I)V

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->K()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->S()V

    .line 9
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lb/n/h/e;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->j0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->j0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private L()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p;->O:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private M(F)V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->G:Z

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->M:[Ljava/lang/Object;

    if-nez v2, :cond_0

    move v3, v0

    goto :goto_0

    .line 4
    :cond_0
    array-length v3, v2

    :goto_0
    if-eqz v2, :cond_9

    if-lez v3, :cond_9

    int-to-float v2, v3

    mul-float v4, p1, v2

    float-to-int v4, v4

    add-int/lit8 v5, v3, -0x1

    .line 5
    invoke-static {v4, v0, v5}, Lb/f/f/a;->d(III)I

    move-result v4

    .line 6
    iget-object v6, p0, Landroidx/recyclerview/widget/p;->R:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-ge v4, v5, :cond_1

    .line 7
    iget-object v5, p0, Landroidx/recyclerview/widget/p;->R:Landroid/widget/SectionIndexer;

    invoke-interface {v5, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    move v8, v4

    if-ne v5, v6, :cond_5

    move v9, v6

    :cond_2
    if-lez v8, :cond_4

    add-int/lit8 v8, v8, -0x1

    .line 8
    iget-object v9, p0, Landroidx/recyclerview/widget/p;->R:Landroid/widget/SectionIndexer;

    invoke-interface {v9, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    if-eq v9, v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez v8, :cond_2

    move v8, v4

    move v6, v9

    move v9, v0

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_2
    move v6, v9

    :cond_5
    move v9, v8

    :goto_3
    add-int/lit8 v10, v7, 0x1

    :goto_4
    if-ge v10, v3, :cond_6

    .line 9
    iget-object v11, p0, Landroidx/recyclerview/widget/p;->R:Landroid/widget/SectionIndexer;

    .line 10
    invoke-interface {v11, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    if-ne v11, v5, :cond_6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    int-to-float v3, v8

    div-float/2addr v3, v2

    int-to-float v7, v7

    div-float/2addr v7, v2

    if-nez v1, :cond_7

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    :cond_7
    const/high16 v2, 0x3e000000    # 0.125f

    int-to-float v10, v1

    div-float/2addr v2, v10

    :goto_5
    if-ne v8, v4, :cond_8

    sub-float v4, p1, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_8

    goto :goto_6

    :cond_8
    sub-int/2addr v5, v6

    int-to-float v2, v5

    sub-float v4, p1, v3

    mul-float/2addr v2, v4

    sub-float/2addr v7, v3

    div-float/2addr v2, v7

    float-to-int v2, v2

    add-int/2addr v6, v2

    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 11
    invoke-static {v6, v0, v1}, Lb/f/f/a;->d(III)I

    move-result v1

    goto :goto_7

    :cond_9
    int-to-float v2, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/lit8 v1, v1, -0x1

    .line 12
    invoke-static {v2, v0, v1}, Lb/f/f/a;->d(III)I

    move-result v1

    const/4 v9, -0x1

    .line 13
    :goto_7
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_a

    .line 14
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v3, p0, Landroidx/recyclerview/widget/p;->I:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(II)V

    goto :goto_8

    .line 15
    :cond_a
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget v3, p0, Landroidx/recyclerview/widget/p;->I:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J2(II)V

    .line 16
    :goto_8
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v2

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/p;->F(III)V

    .line 19
    iget v0, p0, Landroidx/recyclerview/widget/p;->J:I

    if-eq v0, v9, :cond_b

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/p;->i0:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 21
    :cond_b
    iput v9, p0, Landroidx/recyclerview/widget/p;->J:I

    .line 22
    invoke-direct {p0, v9}, Landroidx/recyclerview/widget/p;->T(I)Z

    move-result v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SeslFastScroller"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-boolean p1, p0, Landroidx/recyclerview/widget/p;->P:Z

    if-nez p1, :cond_c

    if-eqz v0, :cond_c

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->U()V

    goto :goto_9

    .line 26
    :cond_c
    iget-boolean p1, p0, Landroidx/recyclerview/widget/p;->P:Z

    if-eqz p1, :cond_d

    if-nez v0, :cond_d

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->W()V

    :cond_d
    :goto_9
    return-void
.end method

.method private P(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->j0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->U:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move p1, v1

    .line 3
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/p;->O:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/p;->J:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->T(I)Z

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->W()V

    goto :goto_0

    .line 6
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->V()V

    .line 7
    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/p;->O:I

    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->L()V

    return-void
.end method

.method private Q(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    move p1, v4

    .line 4
    :cond_1
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/p;->B:F

    mul-float/2addr p1, v2

    iget v2, p0, Landroidx/recyclerview/widget/p;->A:F

    add-float/2addr p1, v2

    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    .line 8
    invoke-static {p1, v1, v0}, Lb/f/f/a;->c(FFF)F

    move-result p1

    sub-float/2addr p1, v3

    .line 9
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private R()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/recyclerview/widget/p;->l0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/p;->Z:J

    return-void
.end method

.method private T(I)Z
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->M:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroid/graphics/Rect;

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    .line 7
    iget-boolean v2, p0, Landroidx/recyclerview/widget/p;->F:Z

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    .line 12
    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-direct {p0, v3, v0}, Landroidx/recyclerview/widget/p;->B(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 14
    invoke-direct {p0, v3, v0}, Landroidx/recyclerview/widget/p;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 15
    iget v4, p0, Landroidx/recyclerview/widget/p;->O:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, ""

    .line 16
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 17
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-ne v4, v6, :cond_3

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 19
    :cond_3
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/p;->E:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    const/4 v9, 0x0

    .line 22
    invoke-static {v2, v9}, Landroidx/recyclerview/widget/p;->d(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    .line 23
    iget-object v8, p0, Landroidx/recyclerview/widget/p;->k0:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 25
    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 26
    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 27
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 28
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/p;->e(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v10, 0x64

    .line 29
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 30
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Landroidx/recyclerview/widget/p;->E:Landroid/animation/AnimatorSet;

    .line 31
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 32
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 35
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_5

    int-to-float v0, v0

    int-to-float v7, v1

    div-float/2addr v0, v7

    .line 36
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 37
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/p;->f(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 38
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    .line 39
    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 40
    :goto_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_6

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 41
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/p;->f(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 42
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 43
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->E:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v9, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1
.end method

.method private U()V
    .locals 7

    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToDragging()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    aput-object v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/p;->s(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0xa7

    .line 5
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    .line 7
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v1, v3, v5, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 10
    iput-boolean v4, p0, Landroidx/recyclerview/widget/p;->P:Z

    return-void
.end method

.method private V()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionToHidden() mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/p;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->P:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Landroidx/recyclerview/widget/p;->J:I

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v1, 0xa7

    goto :goto_0

    :cond_0
    move v1, v0

    .line 6
    :goto_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    iget-object v4, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v6, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget-object v6, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroidx/recyclerview/widget/p;->s(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v1

    .line 7
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    .line 9
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private W()V
    .locals 10

    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToVisible()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Landroidx/recyclerview/widget/p;->s(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0xa7

    .line 5
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 6
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Landroidx/recyclerview/widget/p;->s(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 8
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    .line 9
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v9, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iput-boolean v4, p0, Landroidx/recyclerview/widget/p;->P:Z

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->D:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private X()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/m/a;->colorPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/p;->d0:I

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/p;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->x:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 8
    iget v3, p0, Landroidx/recyclerview/widget/p;->d0:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 9
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/recyclerview/widget/p;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    iget v3, p0, Landroidx/recyclerview/widget/p;->o:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 11
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    iget v3, p0, Landroidx/recyclerview/widget/p;->p:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 14
    :cond_2
    iget v2, p0, Landroidx/recyclerview/widget/p;->o:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/p;->C:I

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    iget v2, p0, Landroidx/recyclerview/widget/p;->m:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    iget v2, p0, Landroidx/recyclerview/widget/p;->n:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 17
    iget v0, p0, Landroidx/recyclerview/widget/p;->y:I

    if-eqz v0, :cond_3

    .line 18
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    iget v3, p0, Landroidx/recyclerview/widget/p;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 20
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->v:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 21
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->v:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    :cond_4
    iget v0, p0, Landroidx/recyclerview/widget/p;->u:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    .line 24
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    iget v2, p0, Landroidx/recyclerview/widget/p;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26
    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/p;->n:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    iget v3, p0, Landroidx/recyclerview/widget/p;->m:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 28
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 29
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 30
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    iget v3, p0, Landroidx/recyclerview/widget/p;->m:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 31
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->L()V

    return-void
.end method

.method private Y()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-static {v0}, Lb/n/h/e;->a(Landroid/view/ViewGroup;)V

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 5
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget v2, p0, Landroidx/recyclerview/widget/p;->W:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ohhye"

    const-string v1, "OUTSIDE_INSET"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 11
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 12
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 13
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_3

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->r()I

    move-result v0

    .line 15
    iget v2, p0, Landroidx/recyclerview/widget/p;->K:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 16
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 17
    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Landroidx/recyclerview/widget/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;->P(I)V

    return-void
.end method

.method private a0(II)V
    .locals 1

    const/4 p2, 0x1

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/p;->i(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p;->i(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->L:Z

    if-eq v0, p1, :cond_2

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/p;->L:Z

    .line 4
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p;->I(Z)V

    :cond_2
    return-void
.end method

.method static synthetic b(Landroidx/recyclerview/widget/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/p;->F:Z

    return p0
.end method

.method private b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    .line 3
    iget v2, p0, Landroidx/recyclerview/widget/p;->z:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    .line 9
    :goto_0
    iput v2, p0, Landroidx/recyclerview/widget/p;->A:F

    sub-float/2addr v0, v2

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/p;->B:F

    return-void
.end method

.method static synthetic c(Landroidx/recyclerview/widget/p;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/p;->F:Z

    return p1
.end method

.method private static d(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 1
    sget-object v1, Landroidx/recyclerview/widget/p;->m0:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 2
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Landroidx/recyclerview/widget/p;->n0:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v3, v5

    .line 3
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/recyclerview/widget/p;->o0:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    .line 4
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Landroidx/recyclerview/widget/p;->p0:Landroid/util/Property;

    new-array v2, v2, [I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, v2, v5

    .line 5
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 6
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private g(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->S:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private h()V
    .locals 2

    const-string v0, "SeslFastScroller"

    const-string v1, "beginDrag() !!!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroidx/recyclerview/widget/p;->Z:J

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->Q:Landroidx/recyclerview/widget/RecyclerView$r;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->q()V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->j()V

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->P(I)V

    return-void
.end method

.method private j()V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private k()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Landroidx/recyclerview/widget/p;->Z:J

    return-void
.end method

.method private l(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 5
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x11

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private n(III)F
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->R:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->Q:Landroidx/recyclerview/widget/RecyclerView$r;

    if-nez v1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->q()V

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_10

    if-nez p3, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 4
    iget-object v4, p0, Landroidx/recyclerview/widget/p;->M:[Ljava/lang/Object;

    if-eqz v4, :cond_3

    array-length v4, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_d

    .line 5
    iget-boolean v4, p0, Landroidx/recyclerview/widget/p;->X:Z

    if-nez v4, :cond_4

    goto/16 :goto_7

    .line 6
    :cond_4
    iget v4, p0, Landroidx/recyclerview/widget/p;->I:I

    sub-int/2addr p1, v4

    if-gez p1, :cond_5

    return v1

    :cond_5
    sub-int/2addr p3, v4

    .line 7
    iget-object v4, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    iget-object v4, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    goto :goto_2

    :cond_7
    :goto_1
    move v4, v1

    .line 10
    :goto_2
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    .line 11
    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    .line 12
    iget-object v7, p0, Landroidx/recyclerview/widget/p;->M:[Ljava/lang/Object;

    array-length v7, v7

    add-int/lit8 v8, v7, -0x1

    if-ge v2, v8, :cond_9

    add-int/lit8 v8, v2, 0x1

    if-ge v8, v7, :cond_8

    .line 13
    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_3

    :cond_8
    add-int/lit8 v0, p3, -0x1

    :goto_3
    sub-int/2addr v0, v6

    goto :goto_4

    :cond_9
    sub-int v0, p3, v6

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    int-to-float v1, p1

    add-float/2addr v1, v4

    int-to-float v4, v6

    sub-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    :goto_5
    int-to-float v0, v2

    add-float/2addr v0, v1

    int-to-float v1, v7

    div-float/2addr v0, v1

    if-lez p1, :cond_c

    add-int/2addr p1, p2

    if-ne p1, p3, :cond_c

    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iget-object p2, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    .line 16
    iget-object p3, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    goto :goto_6

    .line 19
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p2

    .line 20
    iget-object p2, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int v1, p2, p1

    :goto_6
    if-lez v1, :cond_c

    if-lez p3, :cond_c

    sub-float/2addr v5, v0

    int-to-float p1, v1

    int-to-float p2, p3

    div-float/2addr p1, p2

    mul-float/2addr v5, p1

    add-float/2addr v0, v5

    :cond_c
    return v0

    :cond_d
    :goto_7
    if-ne p2, p3, :cond_f

    .line 21
    iget-object p2, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    instance-of p3, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p3, :cond_e

    if-eqz p1, :cond_e

    .line 22
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f()Z

    move-result p1

    if-eqz p1, :cond_e

    return v5

    :cond_e
    return v1

    :cond_f
    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1

    :cond_10
    :goto_8
    return v1
.end method

.method private o(F)F
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p;->B:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/p;->A:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lb/f/f/a;->c(FFF)F

    move-result p1

    return p1
.end method

.method private q()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/recyclerview/widget/p;->R:Landroid/widget/SectionIndexer;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    .line 4
    iput-object v1, p0, Landroidx/recyclerview/widget/p;->Q:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 5
    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroidx/recyclerview/widget/p;->R:Landroid/widget/SectionIndexer;

    .line 6
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/p;->M:[Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p0, Landroidx/recyclerview/widget/p;->Q:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/p;->M:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static varargs s(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private v(FF)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;->w(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p;->x(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/p;->O:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private w(F)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->S:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroidx/recyclerview/widget/p;->h0:F

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroidx/recyclerview/widget/p;->h0:F

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private x(F)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroidx/recyclerview/widget/p;->C(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/p;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private z()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->g:Landroid/widget/ImageView;

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    .line 6
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 7
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 8
    invoke-static {v5, v4}, Lb/n/h/f$a;->a(II)I

    move-result v4

    .line 9
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 10
    iget v3, p0, Landroidx/recyclerview/widget/p;->z:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroidx/recyclerview/widget/p;->s:I

    add-int/2addr v3, v4

    .line 12
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroidx/recyclerview/widget/p;->t:I

    sub-int/2addr v2, v4

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 14
    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iget v5, p0, Landroidx/recyclerview/widget/p;->s:I

    add-int/2addr v4, v5

    .line 15
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    iget v3, p0, Landroidx/recyclerview/widget/p;->t:I

    sub-int/2addr v2, v3

    move v3, v4

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 18
    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public D(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v2, "SeslFastScroller"

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Landroidx/recyclerview/widget/p;->v(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->k()V

    goto :goto_0

    .line 5
    :cond_2
    iget-wide v3, p0, Landroidx/recyclerview/widget/p;->Z:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->h()V

    .line 7
    iget v0, p0, Landroidx/recyclerview/widget/p;->Y:F

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->o(F)F

    move-result v0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/p;->g0:F

    .line 9
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->M(F)V

    const-string v0, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p;->J(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->k()V

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroidx/recyclerview/widget/p;->v(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/p;->Y:F

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->R()V

    :cond_6
    :goto_0
    return v1
.end method

.method public E(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p;->b0:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/p;->c0:I

    if-eq v0, p1, :cond_3

    .line 2
    :cond_0
    iput p2, p0, Landroidx/recyclerview/widget/p;->b0:I

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/p;->c0:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/p;->O:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    .line 6
    invoke-direct {p0, v0, p1, p2}, Landroidx/recyclerview/widget/p;->n(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->Q(F)V

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/p;->a0(II)V

    :cond_3
    return-void
.end method

.method public F(III)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;->P(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/p;->i(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/p;->i(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/p;->O:I

    if-eq v1, v2, :cond_3

    .line 4
    iget v1, p0, Landroidx/recyclerview/widget/p;->g0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    .line 5
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/p;->Q(F)V

    .line 6
    iput v3, p0, Landroidx/recyclerview/widget/p;->g0:F

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/p;->n(III)F

    move-result p2

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p;->Q(F)V

    .line 8
    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->G:Z

    .line 9
    iget p2, p0, Landroidx/recyclerview/widget/p;->H:I

    if-eq p2, p1, :cond_4

    .line 10
    iput p1, p0, Landroidx/recyclerview/widget/p;->H:I

    .line 11
    iget p1, p0, Landroidx/recyclerview/widget/p;->O:I

    if-eq p1, v2, :cond_4

    .line 12
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->P(I)V

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->K()V

    :cond_4
    return-void
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/recyclerview/widget/p;->Q:Landroidx/recyclerview/widget/RecyclerView$r;

    return-void
.end method

.method public H(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->Z()V

    return-void
.end method

.method public J(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->h:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/p;->e0:F

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const-string v6, "SeslFastScroller"

    const/4 v7, 0x1

    if-eqz v4, :cond_d

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    if-eq v4, v7, :cond_b

    if-eq v4, v11, :cond_3

    const/4 p1, 0x3

    if-eq v4, p1, :cond_1

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->k()V

    .line 11
    iget p1, p0, Landroidx/recyclerview/widget/p;->O:I

    if-ne p1, v11, :cond_2

    .line 12
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/p;->P(I)V

    .line 13
    :cond_2
    iput v5, p0, Landroidx/recyclerview/widget/p;->f0:I

    .line 14
    iput v8, p0, Landroidx/recyclerview/widget/p;->e0:F

    goto/16 :goto_2

    .line 15
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroidx/recyclerview/widget/p;->O:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mInitialTouchY="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroidx/recyclerview/widget/p;->Y:F

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-wide v12, p0, Landroidx/recyclerview/widget/p;->Z:J

    cmp-long v4, v12, v9

    const-string v8, ", max="

    const-string v9, ", min="

    if-ltz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v10, p0, Landroidx/recyclerview/widget/p;->Y:F

    sub-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v10, p0, Landroidx/recyclerview/widget/p;->a0:I

    int-to-float v10, v10

    cmpl-float v4, v4, v10

    if-lez v4, :cond_6

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->h()V

    .line 18
    iget v4, p0, Landroidx/recyclerview/widget/p;->e0:F

    int-to-float v10, v1

    cmpl-float v12, v4, v10

    if-lez v12, :cond_6

    int-to-float v12, v0

    cmpg-float v4, v4, v12

    if-gez v4, :cond_6

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Landroidx/recyclerview/widget/p;->e0:F

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget v4, p0, Landroidx/recyclerview/widget/p;->e0:F

    add-float/2addr v10, v3

    cmpg-float v12, v4, v10

    if-gez v12, :cond_4

    .line 21
    iput v10, p0, Landroidx/recyclerview/widget/p;->e0:F

    goto :goto_0

    :cond_4
    cmpl-float v4, v4, v2

    if-lez v4, :cond_5

    .line 22
    iput v2, p0, Landroidx/recyclerview/widget/p;->e0:F

    .line 23
    :cond_5
    :goto_0
    iput v7, p0, Landroidx/recyclerview/widget/p;->f0:I

    .line 24
    :cond_6
    iget v4, p0, Landroidx/recyclerview/widget/p;->O:I

    if-ne v4, v11, :cond_e

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;->o(F)F

    move-result p1

    .line 26
    iput p1, p0, Landroidx/recyclerview/widget/p;->g0:F

    .line 27
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;->Q(F)V

    .line 28
    iget-boolean v4, p0, Landroidx/recyclerview/widget/p;->G:Z

    if-eqz v4, :cond_7

    .line 29
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;->M(F)V

    .line 30
    :cond_7
    iget p1, p0, Landroidx/recyclerview/widget/p;->e0:F

    int-to-float v1, v1

    cmpl-float v4, p1, v1

    if-lez v4, :cond_a

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/p;->e0:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget p1, p0, Landroidx/recyclerview/widget/p;->e0:F

    add-float/2addr v1, v3

    cmpg-float v0, p1, v1

    if-gez v0, :cond_8

    .line 33
    iput v1, p0, Landroidx/recyclerview/widget/p;->e0:F

    goto :goto_1

    :cond_8
    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    .line 34
    iput v2, p0, Landroidx/recyclerview/widget/p;->e0:F

    .line 35
    :cond_9
    :goto_1
    iput v7, p0, Landroidx/recyclerview/widget/p;->f0:I

    :cond_a
    return v7

    .line 36
    :cond_b
    iget-wide v0, p0, Landroidx/recyclerview/widget/p;->Z:J

    cmp-long v0, v0, v9

    if-ltz v0, :cond_c

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->h()V

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->o(F)F

    move-result v0

    .line 39
    iput v0, p0, Landroidx/recyclerview/widget/p;->g0:F

    .line 40
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->Q(F)V

    .line 41
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->M(F)V

    .line 42
    iput v7, p0, Landroidx/recyclerview/widget/p;->f0:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_c
    iget p1, p0, Landroidx/recyclerview/widget/p;->O:I

    if-ne p1, v11, :cond_e

    .line 45
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 46
    invoke-direct {p0, v7}, Landroidx/recyclerview/widget/p;->P(I)V

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->K()V

    .line 48
    iput v5, p0, Landroidx/recyclerview/widget/p;->f0:I

    .line 49
    iput v8, p0, Landroidx/recyclerview/widget/p;->e0:F

    return v7

    .line 50
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/p;->v(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->h()V

    .line 52
    iput v7, p0, Landroidx/recyclerview/widget/p;->f0:I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_e
    :goto_2
    return v5
.end method

.method public N(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled() enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslFastScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->T:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/p;->T:Z

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p;->I(Z)V

    :cond_0
    return-void
.end method

.method public O(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->Y()I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/p;->K:I

    if-eq v1, p1, :cond_3

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/p;->K:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->S:Z

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->k:[I

    aget p1, p1, v0

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Landroidx/recyclerview/widget/p;->d0:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->Z()V

    :cond_3
    return-void
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;->P(I)V

    return-void
.end method

.method public Z()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->N:Z

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->Y()V

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->y()V

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->z()V

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/p;->b0()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->N:Z

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->a:Landroid/graphics/Rect;

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/p;->B(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->e:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/p;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/p;->B(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/p;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 14
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 15
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 16
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/p;->i:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/p;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public i(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    const/4 v5, 0x1

    if-lez p1, :cond_3

    add-int/lit8 p1, v0, -0x1

    .line 4
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v2, v0

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_2

    :cond_1
    move v1, v5

    :cond_2
    return v1

    .line 6
    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gtz v2, :cond_4

    .line 7
    iget v0, v4, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_5

    :cond_4
    move v1, v5

    :cond_5
    return v1
.end method

.method m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p;->f0:I

    return v0
.end method

.method p()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p;->e0:F

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p;->C:I

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->U:Z

    return v0
.end method

.method public u()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->T:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->L:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/p;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/p;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->L:Z

    .line 3
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->T:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->L:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/p;->U:Z

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method
