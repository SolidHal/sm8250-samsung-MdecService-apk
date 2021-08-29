.class public Landroidx/core/widget/i;
.super Landroid/widget/EdgeEffect;
.source "SeslEdgeEffect.java"


# static fields
.field private static final C:F

.field private static final D:F

.field private static final E:[I


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Ljava/lang/Runnable;

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:F

.field private final j:Landroid/view/animation/Interpolator;

.field private k:I

.field private l:F

.field private final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/Paint;

.field private o:F

.field private p:F

.field private q:Z

.field private final r:Landroid/util/DisplayMetrics;

.field private final s:F

.field private final t:F

.field private u:F

.field private v:F

.field private final w:Landroid/graphics/Path;

.field private x:Landroid/view/View;

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroidx/core/widget/i;->C:F

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroidx/core/widget/i;->D:F

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10104ce

    aput v2, v0, v1

    .line 3
    sput-object v0, Landroidx/core/widget/i;->E:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Landroidx/core/widget/i;->a:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/core/widget/i;->k:I

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/core/widget/i;->m:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    iput v1, p0, Landroidx/core/widget/i;->o:F

    .line 7
    iput v1, p0, Landroidx/core/widget/i;->p:F

    .line 8
    iput-boolean v0, p0, Landroidx/core/widget/i;->q:Z

    .line 9
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    .line 10
    new-instance v1, Landroidx/core/widget/i$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/core/widget/i$a;-><init>(Landroidx/core/widget/i;Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/core/widget/i;->A:Landroid/os/Handler;

    .line 11
    new-instance v1, Landroidx/core/widget/i$b;

    invoke-direct {v1, p0}, Landroidx/core/widget/i$b;-><init>(Landroidx/core/widget/i;)V

    iput-object v1, p0, Landroidx/core/widget/i;->B:Ljava/lang/Runnable;

    .line 12
    iget-object v1, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/core/widget/i;->E:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, -0x99999a

    .line 14
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    iget-object v1, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, 0x33000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v0, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 19
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/i;->j:Landroid/view/animation/Interpolator;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/widget/i;->r:Landroid/util/DisplayMetrics;

    const/high16 p1, 0x42aa0000    # 85.0f

    .line 21
    invoke-direct {p0, p1}, Landroidx/core/widget/i;->e(F)F

    move-result p1

    iput p1, p0, Landroidx/core/widget/i;->s:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 22
    invoke-direct {p0, p1}, Landroidx/core/widget/i;->e(F)F

    move-result p1

    iput p1, p0, Landroidx/core/widget/i;->t:F

    return-void
.end method

.method static synthetic a(Landroidx/core/widget/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/widget/i;->q:Z

    return p1
.end method

.method static synthetic b(Landroidx/core/widget/i;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/widget/i;->y:F

    return p0
.end method

.method static synthetic c(Landroidx/core/widget/i;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/widget/i;->z:F

    return p0
.end method

.method static synthetic d(Landroidx/core/widget/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/widget/i;->A:Landroid/os/Handler;

    return-object p0
.end method

.method private e(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/i;->r:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private f()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/widget/i;->k:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method private i()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Landroidx/core/widget/i;->h:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroidx/core/widget/i;->i:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/core/widget/i;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 4
    iget v2, p0, Landroidx/core/widget/i;->d:F

    iget v3, p0, Landroidx/core/widget/i;->e:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/core/widget/i;->b:F

    .line 5
    iget v2, p0, Landroidx/core/widget/i;->f:F

    iget v3, p0, Landroidx/core/widget/i;->g:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/core/widget/i;->c:F

    .line 6
    iget v1, p0, Landroidx/core/widget/i;->o:F

    iget v2, p0, Landroidx/core/widget/i;->p:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroidx/core/widget/i;->o:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 7
    iget v0, p0, Landroidx/core/widget/i;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    :cond_0
    iget v0, p0, Landroidx/core/widget/i;->k:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x3e19999a    # 0.15f

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    iput v1, p0, Landroidx/core/widget/i;->k:I

    .line 10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/i;->h:J

    const/high16 v0, 0x43e10000    # 450.0f

    .line 11
    iput v0, p0, Landroidx/core/widget/i;->i:F

    .line 12
    iget v0, p0, Landroidx/core/widget/i;->b:F

    iput v0, p0, Landroidx/core/widget/i;->d:F

    .line 13
    iget v0, p0, Landroidx/core/widget/i;->c:F

    iput v0, p0, Landroidx/core/widget/i;->f:F

    .line 14
    iput v5, p0, Landroidx/core/widget/i;->e:F

    .line 15
    iput v5, p0, Landroidx/core/widget/i;->g:F

    goto :goto_0

    .line 16
    :pswitch_1
    iput v2, p0, Landroidx/core/widget/i;->k:I

    .line 17
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/i;->h:J

    .line 18
    iput v5, p0, Landroidx/core/widget/i;->i:F

    .line 19
    iput v4, p0, Landroidx/core/widget/i;->d:F

    iput v4, p0, Landroidx/core/widget/i;->e:F

    .line 20
    iget v0, p0, Landroidx/core/widget/i;->a:F

    iput v0, p0, Landroidx/core/widget/i;->f:F

    iput v0, p0, Landroidx/core/widget/i;->g:F

    goto :goto_0

    .line 21
    :pswitch_2
    iput v1, p0, Landroidx/core/widget/i;->k:I

    goto :goto_0

    .line 22
    :pswitch_3
    iput v3, p0, Landroidx/core/widget/i;->k:I

    goto :goto_0

    .line 23
    :pswitch_4
    iput v2, p0, Landroidx/core/widget/i;->k:I

    .line 24
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/i;->h:J

    .line 25
    iput v5, p0, Landroidx/core/widget/i;->i:F

    .line 26
    iput v4, p0, Landroidx/core/widget/i;->d:F

    iput v4, p0, Landroidx/core/widget/i;->e:F

    .line 27
    iget v0, p0, Landroidx/core/widget/i;->a:F

    iput v0, p0, Landroidx/core/widget/i;->f:F

    iput v0, p0, Landroidx/core/widget/i;->g:F

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    .line 28
    iput v0, p0, Landroidx/core/widget/i;->k:I

    .line 29
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/i;->h:J

    const/high16 v0, 0x437a0000    # 250.0f

    .line 30
    iput v0, p0, Landroidx/core/widget/i;->i:F

    .line 31
    iput v5, p0, Landroidx/core/widget/i;->d:F

    .line 32
    iput v5, p0, Landroidx/core/widget/i;->f:F

    .line 33
    iput v4, p0, Landroidx/core/widget/i;->e:F

    .line 34
    iget v0, p0, Landroidx/core/widget/i;->a:F

    iput v0, p0, Landroidx/core/widget/i;->g:F

    .line 35
    iput v5, p0, Landroidx/core/widget/i;->c:F

    .line 36
    iput-boolean v3, p0, Landroidx/core/widget/i;->q:Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12

    .line 1
    invoke-direct {p0}, Landroidx/core/widget/i;->i()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/core/widget/i;->m:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget v2, p0, Landroidx/core/widget/i;->c:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 5
    iget v2, p0, Landroidx/core/widget/i;->o:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 6
    iget v2, p0, Landroidx/core/widget/i;->v:F

    iget v3, p0, Landroidx/core/widget/i;->u:F

    add-float v9, v2, v3

    .line 7
    iget-object v2, p0, Landroidx/core/widget/i;->m:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    .line 8
    iget-object v3, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-object v3, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    iget-object v3, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    iget v5, p0, Landroidx/core/widget/i;->u:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v5, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    sub-float v6, v1, v2

    add-float v8, v1, v2

    iget-object v1, p0, Landroidx/core/widget/i;->m:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v10, v1

    iget v11, p0, Landroidx/core/widget/i;->u:F

    move v7, v9

    .line 13
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 14
    iget-object v1, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/core/widget/i;->m:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v1, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 16
    iget-object v1, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/core/widget/i;->b:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    iget-object v1, p0, Landroidx/core/widget/i;->w:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 19
    iget p1, p0, Landroidx/core/widget/i;->k:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget p1, p0, Landroidx/core/widget/i;->c:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_0

    .line 20
    iput v1, p0, Landroidx/core/widget/i;->k:I

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 21
    :goto_0
    iget v2, p0, Landroidx/core/widget/i;->k:I

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/core/widget/i;->k:I

    return-void
.end method

.method public g(FFI)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/core/widget/i;->y:F

    .line 2
    iput p2, p0, Landroidx/core/widget/i;->z:F

    .line 3
    iget-object p1, p0, Landroidx/core/widget/i;->A:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/core/widget/i;->B:Ljava/lang/Runnable;

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/i;->m:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/widget/i;->x:Landroid/view/View;

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/widget/i;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/core/widget/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/i;->x:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x1c

    .line 3
    invoke-static {v1}, Lb/n/h/a;->a(I)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/core/widget/i;->q:Z

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Landroidx/core/widget/i;->k:I

    const/16 v1, 0x64

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x2710

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/core/widget/i;->h:J

    const/high16 p1, 0x437a0000    # 250.0f

    .line 9
    iput p1, p0, Landroidx/core/widget/i;->i:F

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Landroidx/core/widget/i;->d:F

    .line 11
    iput p1, p0, Landroidx/core/widget/i;->f:F

    .line 12
    iget p1, p0, Landroidx/core/widget/i;->a:F

    iput p1, p0, Landroidx/core/widget/i;->g:F

    const p1, 0x3e19999a    # 0.15f

    .line 13
    iput p1, p0, Landroidx/core/widget/i;->e:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    iput p1, p0, Landroidx/core/widget/i;->p:F

    .line 15
    iget-object p1, p0, Landroidx/core/widget/i;->A:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/i;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 6

    .line 2
    iget v0, p0, Landroidx/core/widget/i;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/core/widget/i;->q:Z

    .line 4
    invoke-direct {p0}, Landroidx/core/widget/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Landroidx/core/widget/i;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/core/widget/i;->l:F

    .line 6
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 7
    iput p2, p0, Landroidx/core/widget/i;->p:F

    .line 8
    iget p2, p0, Landroidx/core/widget/i;->k:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-wide v4, p0, Landroidx/core/widget/i;->h:J

    sub-long v4, v2, v4

    long-to-float p2, v4

    iget v0, p0, Landroidx/core/widget/i;->i:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return-void

    .line 9
    :cond_1
    iget p2, p0, Landroidx/core/widget/i;->k:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 10
    iget p2, p0, Landroidx/core/widget/i;->c:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroidx/core/widget/i;->c:F

    .line 11
    :cond_2
    invoke-direct {p0}, Landroidx/core/widget/i;->f()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Landroidx/core/widget/i;->l:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroidx/core/widget/i;->q:Z

    if-nez p2, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object p2, p0, Landroidx/core/widget/i;->x:Landroid/view/View;

    if-eqz p2, :cond_4

    const/16 p2, 0x1c

    .line 13
    invoke-static {p2}, Lb/n/h/a;->a(I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 14
    iget-object v1, p0, Landroidx/core/widget/i;->x:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 15
    :cond_4
    iput v0, p0, Landroidx/core/widget/i;->k:I

    .line 16
    iput-wide v2, p0, Landroidx/core/widget/i;->h:J

    const/high16 p2, 0x43270000    # 167.0f

    .line 17
    iput p2, p0, Landroidx/core/widget/i;->i:F

    .line 18
    iget p2, p0, Landroidx/core/widget/i;->l:F

    add-float/2addr p2, p1

    iput p2, p0, Landroidx/core/widget/i;->l:F

    :cond_5
    :goto_0
    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/core/widget/i;->l:F

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/core/widget/i;->q:Z

    .line 3
    iget v2, p0, Landroidx/core/widget/i;->k:I

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 4
    iput v1, p0, Landroidx/core/widget/i;->k:I

    .line 5
    iget v1, p0, Landroidx/core/widget/i;->b:F

    iput v1, p0, Landroidx/core/widget/i;->d:F

    .line 6
    iget v1, p0, Landroidx/core/widget/i;->c:F

    iput v1, p0, Landroidx/core/widget/i;->f:F

    .line 7
    iput v0, p0, Landroidx/core/widget/i;->e:F

    .line 8
    iput v0, p0, Landroidx/core/widget/i;->g:F

    .line 9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/i;->h:J

    const/high16 v0, 0x43e10000    # 450.0f

    .line 10
    iput v0, p0, Landroidx/core/widget/i;->i:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 4

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v1, v0

    .line 1
    sget v2, Landroidx/core/widget/i;->C:F

    div-float/2addr v1, v2

    .line 2
    sget v2, Landroidx/core/widget/i;->D:F

    mul-float/2addr v2, v1

    sub-float/2addr v1, v2

    int-to-float p2, p2

    .line 3
    iget v2, p0, Landroidx/core/widget/i;->s:F

    iget v3, p0, Landroidx/core/widget/i;->t:F

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    invoke-direct {p0, v0}, Landroidx/core/widget/i;->e(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/i;->u:F

    const/high16 v0, 0x41980000    # 19.0f

    .line 5
    invoke-direct {p0, v0}, Landroidx/core/widget/i;->e(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/i;->v:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    .line 6
    invoke-direct {p0, v0}, Landroidx/core/widget/i;->e(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/i;->u:F

    const/high16 v0, 0x41e80000    # 29.0f

    .line 7
    invoke-direct {p0, v0}, Landroidx/core/widget/i;->e(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/i;->v:F

    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/core/widget/i;->m:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
