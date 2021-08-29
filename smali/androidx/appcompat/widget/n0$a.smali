.class Landroidx/appcompat/widget/n0$a;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static A:[F

.field private static B:Z

.field private static C:Z

.field private static u:F

.field private static final v:[F

.field private static w:F

.field private static final x:[[F

.field private static final y:[[F

.field private static z:[F


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:I

.field private o:F

.field private p:I

.field private q:J

.field private r:J

.field private s:I

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const-class v0, F

    const-wide v1, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    sput v1, Landroidx/appcompat/widget/n0$a;->u:F

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 2
    fill-array-data v2, :array_0

    sput-object v2, Landroidx/appcompat/widget/n0$a;->v:[F

    const/4 v3, 0x1

    .line 3
    aget v2, v2, v3

    sput v2, Landroidx/appcompat/widget/n0$a;->w:F

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    sput-object v2, Landroidx/appcompat/widget/n0$a;->x:[[F

    new-array v2, v1, [I

    .line 5
    fill-array-data v2, :array_2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Landroidx/appcompat/widget/n0$a;->y:[[F

    .line 6
    sget-object v2, Landroidx/appcompat/widget/n0$a;->x:[[F

    aget-object v2, v2, v3

    sput-object v2, Landroidx/appcompat/widget/n0$a;->z:[F

    .line 7
    aget-object v0, v0, v3

    sput-object v0, Landroidx/appcompat/widget/n0$a;->A:[F

    .line 8
    sput-boolean v3, Landroidx/appcompat/widget/n0$a;->B:Z

    .line 9
    sput-boolean v3, Landroidx/appcompat/widget/n0$a;->C:Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 10
    sget-object v3, Landroidx/appcompat/widget/n0$a;->v:[F

    aget v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 11
    aget v3, v3, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    mul-float/2addr v3, v6

    sub-float v3, v6, v3

    const/4 v7, 0x0

    move v8, v7

    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x64

    if-ge v9, v10, :cond_4

    int-to-float v10, v9

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v11, v10, v11

    move v10, v6

    :goto_2
    sub-float v12, v10, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v7

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v15, v12, v14

    sub-float v16, v6, v12

    mul-float v15, v15, v16

    mul-float v17, v16, v4

    mul-float v18, v12, v3

    add-float v17, v17, v18

    mul-float v17, v17, v15

    mul-float v18, v12, v12

    mul-float v18, v18, v12

    add-float v17, v17, v18

    sub-float v19, v17, v11

    .line 12
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move/from16 v20, v7

    float-to-double v6, v0

    const-wide v21, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v6, v21

    if-gez v0, :cond_2

    .line 13
    sget-object v0, Landroidx/appcompat/widget/n0$a;->x:[[F

    aget-object v0, v0, v2

    mul-float v16, v16, v5

    add-float v16, v16, v12

    mul-float v15, v15, v16

    add-float v15, v15, v18

    aput v15, v0, v9

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    sub-float v6, v0, v8

    div-float/2addr v6, v13

    add-float/2addr v6, v8

    mul-float v7, v6, v14

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v12, v10, v6

    mul-float/2addr v7, v12

    mul-float v10, v12, v5

    add-float/2addr v10, v6

    mul-float/2addr v10, v7

    mul-float v15, v6, v6

    mul-float/2addr v15, v6

    add-float/2addr v10, v15

    sub-float v16, v10, v11

    .line 14
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v13, v1

    cmpg-double v1, v13, v21

    if-gez v1, :cond_0

    .line 15
    sget-object v0, Landroidx/appcompat/widget/n0$a;->y:[[F

    aget-object v0, v0, v2

    mul-float/2addr v12, v4

    mul-float/2addr v6, v3

    add-float/2addr v12, v6

    mul-float/2addr v7, v12

    add-float/2addr v7, v15

    aput v7, v0, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v20

    const/4 v1, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    cmpl-float v1, v10, v11

    if-lez v1, :cond_1

    move v0, v6

    goto :goto_4

    :cond_1
    move v8, v6

    :goto_4
    const/4 v1, 0x2

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x40400000    # 3.0f

    goto :goto_3

    :cond_2
    cmpl-float v0, v17, v11

    if-lez v0, :cond_3

    move v10, v12

    move/from16 v7, v20

    goto :goto_5

    :cond_3
    move v7, v12

    :goto_5
    const/4 v1, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 16
    :cond_4
    sget-object v0, Landroidx/appcompat/widget/n0$a;->x:[[F

    aget-object v0, v0, v2

    sget-object v1, Landroidx/appcompat/widget/n0$a;->y:[[F

    aget-object v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v10

    aput v3, v0, v10

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x65
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x65
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->m:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/n0$a;->n:I

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/n0$a;->p:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Landroidx/appcompat/widget/n0$a;->q:J

    .line 6
    iput-wide v1, p0, Landroidx/appcompat/widget/n0$a;->r:J

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/widget/n0$a;->t:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/n0$a;->k:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v1

    .line 10
    iput v0, p0, Landroidx/appcompat/widget/n0$a;->o:F

    .line 11
    sget-boolean v0, Landroidx/appcompat/widget/n0$a;->B:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/n0$a;->s:I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/appcompat/widget/n0$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/appcompat/widget/n0$a;->k:Z

    return p0
.end method

.method static synthetic b(Landroidx/appcompat/widget/n0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/n0$a;->b:I

    return p0
.end method

.method static synthetic c(Landroidx/appcompat/widget/n0$a;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/n0$a;->e:F

    return p0
.end method

.method static synthetic d(Landroidx/appcompat/widget/n0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/n0$a;->c:I

    return p0
.end method

.method static synthetic e(Landroidx/appcompat/widget/n0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/n0$a;->h:I

    return p0
.end method

.method static synthetic f(Landroidx/appcompat/widget/n0$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/appcompat/widget/n0$a;->g:J

    return-wide v0
.end method

.method private g(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 2
    sget-object p2, Landroidx/appcompat/widget/n0$a;->A:[F

    aget p3, p2, p3

    .line 3
    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    .line 4
    iget p1, p0, Landroidx/appcompat/widget/n0$a;->h:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/n0$a;->h:I

    :cond_0
    return-void
.end method

.method private j(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    .line 1
    iget v1, p0, Landroidx/appcompat/widget/n0$a;->f:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float/2addr p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    .line 4
    iget p1, p0, Landroidx/appcompat/widget/n0$a;->f:F

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 7
    iget-wide v1, p0, Landroidx/appcompat/widget/n0$a;->g:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/appcompat/widget/n0$a;->g:J

    .line 8
    iput p2, p0, Landroidx/appcompat/widget/n0$a;->a:I

    iput p2, p0, Landroidx/appcompat/widget/n0$a;->b:I

    .line 9
    iget p2, p0, Landroidx/appcompat/widget/n0$a;->f:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/n0$a;->d:I

    return-void
.end method

.method private static l(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method private m(I)D
    .locals 2

    .line 1
    sget v0, Landroidx/appcompat/widget/n0$a;->w:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Landroidx/appcompat/widget/n0$a;->m:F

    iget v1, p0, Landroidx/appcompat/widget/n0$a;->o:F

    mul-float/2addr p1, v1

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private n(I)D
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/n0$a;->m(I)D

    move-result-wide v0

    .line 2
    sget v2, Landroidx/appcompat/widget/n0$a;->u:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    .line 3
    sget-boolean v5, Landroidx/appcompat/widget/n0$a;->B:Z

    if-eqz v5, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Landroidx/appcompat/widget/n0$a;->s:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/16 v2, 0x64

    if-le p1, v2, :cond_0

    move p1, v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    sget-object v5, Landroidx/appcompat/widget/n0$a;->z:[F

    aget p1, v5, p1

    sub-float/2addr v2, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float/2addr v2, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    add-float/2addr v2, p1

    float-to-double v5, v2

    .line 6
    iget p1, p0, Landroidx/appcompat/widget/n0$a;->m:F

    float-to-double v7, p1

    mul-double/2addr v5, v7

    iget p1, p0, Landroidx/appcompat/widget/n0$a;->o:F

    float-to-double v7, p1

    mul-double/2addr v5, v7

    sget p1, Landroidx/appcompat/widget/n0$a;->u:F

    float-to-double v7, p1

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v5, v0

    return-wide v5

    .line 7
    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/n0$a;->m:F

    iget v5, p0, Landroidx/appcompat/widget/n0$a;->o:F

    mul-float/2addr p1, v5

    float-to-double v5, p1

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private o(I)I
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/n0$a;->m(I)D

    move-result-wide v0

    .line 2
    sget v2, Landroidx/appcompat/widget/n0$a;->u:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 3
    sget-boolean v4, Landroidx/appcompat/widget/n0$a;->B:Z

    const-wide v5, 0x408f400000000000L    # 1000.0

    if-eqz v4, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Landroidx/appcompat/widget/n0$a;->s:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr p1, v4

    float-to-int p1, p1

    const/16 v4, 0x64

    if-le p1, v4, :cond_0

    move p1, v4

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5
    sget-object v7, Landroidx/appcompat/widget/n0$a;->z:[F

    aget p1, v7, p1

    sub-float/2addr v4, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float/2addr v4, p1

    const p1, 0x3fe66666    # 1.8f

    add-float/2addr v4, p1

    float-to-double v7, v4

    mul-double/2addr v7, v5

    div-double/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    double-to-int p1, v7

    return p1

    :cond_1
    div-double/2addr v0, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int p1, v0

    return p1
.end method

.method private p()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->d:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    .line 3
    iget v3, p0, Landroidx/appcompat/widget/n0$a;->d:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 4
    iget v4, p0, Landroidx/appcompat/widget/n0$a;->l:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    neg-float v0, v3

    mul-float/2addr v0, v1

    int-to-float v1, v4

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/n0$a;->f:F

    int-to-float v0, v4

    :cond_0
    float-to-int v1, v0

    .line 6
    iput v1, p0, Landroidx/appcompat/widget/n0$a;->l:I

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Landroidx/appcompat/widget/n0$a;->n:I

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/n0$a;->a:I

    iget v2, p0, Landroidx/appcompat/widget/n0$a;->d:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/n0$a;->c:I

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 9
    iget v1, p0, Landroidx/appcompat/widget/n0$a;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v0, p0, Landroidx/appcompat/widget/n0$a;->f:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    neg-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->h:I

    .line 10
    sget-boolean v0, Landroidx/appcompat/widget/n0$a;->C:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/n0$a;->p:I

    :cond_2
    return-void
.end method

.method private r(IIII)V
    .locals 10

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    const-string p1, "OverScroller"

    const-string p2, "startAfterEdge called from a valid position"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/n0$a;->k:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le p1, p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    move v3, p3

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    sub-int v4, p1, v3

    mul-int v5, v4, p4

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 3
    invoke-direct {p0, p1, v3, p4}, Landroidx/appcompat/widget/n0$a;->s(III)V

    goto :goto_5

    .line 4
    :cond_4
    invoke-direct {p0, p4}, Landroidx/appcompat/widget/n0$a;->n(I)D

    move-result-wide v0

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    if-eqz v2, :cond_5

    move v7, p2

    goto :goto_3

    :cond_5
    move v7, p1

    :goto_3
    if-eqz v2, :cond_6

    move v8, p1

    goto :goto_4

    :cond_6
    move v8, p3

    .line 6
    :goto_4
    iget v9, p0, Landroidx/appcompat/widget/n0$a;->l:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/widget/n0$a;->k(IIIII)V

    goto :goto_5

    .line 7
    :cond_7
    invoke-direct {p0, p1, v3, p4}, Landroidx/appcompat/widget/n0$a;->u(III)V

    :goto_5
    return-void
.end method

.method private s(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 1
    :goto_0
    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->l(I)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->f:F

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/n0$a;->j(III)V

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/n0$a;->p()V

    return-void
.end method

.method private u(III)V
    .locals 2

    const/4 p3, 0x0

    .line 1
    iput-boolean p3, p0, Landroidx/appcompat/widget/n0$a;->k:Z

    const/4 p3, 0x1

    .line 2
    iput p3, p0, Landroidx/appcompat/widget/n0$a;->n:I

    .line 3
    iput p1, p0, Landroidx/appcompat/widget/n0$a;->a:I

    iput p1, p0, Landroidx/appcompat/widget/n0$a;->b:I

    .line 4
    iput p2, p0, Landroidx/appcompat/widget/n0$a;->c:I

    sub-int/2addr p1, p2

    .line 5
    invoke-static {p1}, Landroidx/appcompat/widget/n0$a;->l(I)F

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/n0$a;->f:F

    neg-int p2, p1

    .line 6
    iput p2, p0, Landroidx/appcompat/widget/n0$a;->d:I

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/n0$a;->l:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    mul-double/2addr p1, v0

    .line 8
    iget p3, p0, Landroidx/appcompat/widget/n0$a;->f:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/n0$a;->h:I

    return-void
.end method


# virtual methods
.method h()Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v3, p0, Landroidx/appcompat/widget/n0$a;->g:J

    iget v0, p0, Landroidx/appcompat/widget/n0$a;->h:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/appcompat/widget/n0$a;->g:J

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->c:I

    iget v3, p0, Landroidx/appcompat/widget/n0$a;->a:I

    invoke-direct {p0, v0, v3, v2}, Landroidx/appcompat/widget/n0$a;->u(III)V

    goto :goto_0

    :cond_1
    return v2

    .line 4
    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->h:I

    iget v3, p0, Landroidx/appcompat/widget/n0$a;->i:I

    if-ge v0, v3, :cond_3

    .line 5
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->c:I

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->a:I

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->b:I

    .line 6
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->e:F

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->d:I

    .line 7
    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->l(I)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->f:F

    .line 8
    iget-wide v2, p0, Landroidx/appcompat/widget/n0$a;->g:J

    iget v0, p0, Landroidx/appcompat/widget/n0$a;->h:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/appcompat/widget/n0$a;->g:J

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/widget/n0$a;->p()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/n0$a;->v()Z

    return v1

    :cond_3
    return v2
.end method

.method i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/n0$a;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lb/n/e/a;->a(Z)Z

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/n0$a;->t:Z

    .line 4
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->c:I

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->b:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/n0$a;->k:Z

    return-void
.end method

.method k(IIIII)V
    .locals 5

    .line 1
    iput p5, p0, Landroidx/appcompat/widget/n0$a;->l:I

    const/4 p5, 0x0

    .line 2
    iput-boolean p5, p0, Landroidx/appcompat/widget/n0$a;->k:Z

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/n0$a;->d:I

    int-to-float v0, p2

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->e:F

    .line 4
    iput p5, p0, Landroidx/appcompat/widget/n0$a;->i:I

    iput p5, p0, Landroidx/appcompat/widget/n0$a;->h:I

    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroidx/appcompat/widget/n0;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/appcompat/widget/n0$a;->g:J

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/n0$a;->a:I

    iput p1, p0, Landroidx/appcompat/widget/n0$a;->b:I

    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput p5, p0, Landroidx/appcompat/widget/n0$a;->n:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/n0$a;->o(I)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/n0$a;->i:I

    iput v1, p0, Landroidx/appcompat/widget/n0$a;->h:I

    .line 9
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/n0$a;->n(I)D

    move-result-wide v1

    .line 10
    sget-boolean v3, Landroidx/appcompat/widget/n0$a;->B:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/appcompat/widget/n0$a;->t:Z

    if-nez v3, :cond_2

    const/16 v3, 0x320

    if-ge p2, v3, :cond_1

    const/16 v3, -0x320

    if-gt p2, v3, :cond_2

    :cond_1
    const/4 p2, 0x1

    .line 11
    invoke-static {p2}, Lb/n/e/a;->a(Z)Z

    .line 12
    iput-boolean p2, p0, Landroidx/appcompat/widget/n0$a;->t:Z

    .line 13
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Landroidx/appcompat/widget/n0$a;->j:I

    add-int/2addr p1, p2

    .line 14
    iput p1, p0, Landroidx/appcompat/widget/n0$a;->c:I

    if-ge p1, p3, :cond_3

    .line 15
    iget p2, p0, Landroidx/appcompat/widget/n0$a;->a:I

    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/n0$a;->g(III)V

    .line 16
    iput p3, p0, Landroidx/appcompat/widget/n0$a;->c:I

    .line 17
    :cond_3
    iget p1, p0, Landroidx/appcompat/widget/n0$a;->c:I

    if-le p1, p4, :cond_4

    .line 18
    iget p2, p0, Landroidx/appcompat/widget/n0$a;->a:I

    invoke-direct {p0, p2, p1, p4}, Landroidx/appcompat/widget/n0$a;->g(III)V

    .line 19
    iput p4, p0, Landroidx/appcompat/widget/n0$a;->c:I

    .line 20
    :cond_4
    sget-boolean p1, Landroidx/appcompat/widget/n0$a;->C:Z

    if-eqz p1, :cond_5

    .line 21
    iput p5, p0, Landroidx/appcompat/widget/n0$a;->p:I

    :cond_5
    return-void

    .line 22
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroidx/appcompat/widget/n0$a;->r(IIII)V

    return-void
.end method

.method public q(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Landroidx/appcompat/widget/n0$a;->B:Z

    .line 2
    sput-boolean v0, Landroidx/appcompat/widget/n0$a;->C:Z

    goto :goto_0

    .line 3
    :cond_1
    sput-boolean v0, Landroidx/appcompat/widget/n0$a;->B:Z

    .line 4
    sput-boolean v0, Landroidx/appcompat/widget/n0$a;->C:Z

    .line 5
    :goto_0
    sget-object v0, Landroidx/appcompat/widget/n0$a;->v:[F

    aget v0, v0, p1

    sput v0, Landroidx/appcompat/widget/n0$a;->w:F

    .line 6
    sget-object v0, Landroidx/appcompat/widget/n0$a;->x:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroidx/appcompat/widget/n0$a;->z:[F

    .line 7
    sget-object v0, Landroidx/appcompat/widget/n0$a;->y:[[F

    aget-object p1, v0, p1

    sput-object p1, Landroidx/appcompat/widget/n0$a;->A:[F

    :cond_2
    :goto_1
    return-void
.end method

.method t(III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/n0$a;->k:Z

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/n0$a;->a:I

    iput p1, p0, Landroidx/appcompat/widget/n0$a;->b:I

    add-int/2addr p1, p2

    .line 3
    iput p1, p0, Landroidx/appcompat/widget/n0$a;->c:I

    .line 4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/appcompat/widget/n0$a;->g:J

    .line 5
    iput p3, p0, Landroidx/appcompat/widget/n0$a;->h:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/n0$a;->f:F

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/n0$a;->d:I

    return-void
.end method

.method v()Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 2
    iget-wide v3, v0, Landroidx/appcompat/widget/n0$a;->g:J

    sub-long/2addr v1, v3

    .line 3
    sget-boolean v3, Landroidx/appcompat/widget/n0$a;->C:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    iget v3, v0, Landroidx/appcompat/widget/n0$a;->n:I

    if-nez v3, :cond_4

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/n0;->b()J

    move-result-wide v7

    cmp-long v3, v7, v4

    if-nez v3, :cond_0

    iget v3, v0, Landroidx/appcompat/widget/n0$a;->p:I

    if-lez v3, :cond_0

    .line 5
    iget-wide v7, v0, Landroidx/appcompat/widget/n0$a;->q:J

    add-long/2addr v7, v1

    const-wide/16 v1, 0x2

    div-long v1, v7, v1

    .line 6
    :cond_0
    iget v3, v0, Landroidx/appcompat/widget/n0$a;->p:I

    const/16 v7, 0x1e

    if-le v3, v7, :cond_2

    .line 7
    iget-wide v7, v0, Landroidx/appcompat/widget/n0$a;->q:J

    sub-long v9, v1, v7

    .line 8
    iget-wide v11, v0, Landroidx/appcompat/widget/n0$a;->r:J

    const-wide/16 v13, 0x1

    add-long v15, v11, v13

    cmp-long v3, v9, v15

    if-lez v3, :cond_1

    add-long/2addr v7, v11

    add-long v1, v7, v13

    goto :goto_0

    :cond_1
    sub-long v15, v11, v13

    cmp-long v3, v9, v15

    if-gez v3, :cond_2

    add-long/2addr v7, v11

    sub-long v1, v7, v13

    :cond_2
    :goto_0
    cmp-long v3, v1, v4

    if-gez v3, :cond_3

    move-wide v1, v4

    .line 9
    :cond_3
    iget-wide v7, v0, Landroidx/appcompat/widget/n0$a;->q:J

    sub-long v7, v1, v7

    iput-wide v7, v0, Landroidx/appcompat/widget/n0$a;->r:J

    .line 10
    iput-wide v1, v0, Landroidx/appcompat/widget/n0$a;->q:J

    .line 11
    iget v3, v0, Landroidx/appcompat/widget/n0$a;->p:I

    add-int/2addr v3, v6

    iput v3, v0, Landroidx/appcompat/widget/n0$a;->p:I

    :cond_4
    cmp-long v3, v1, v4

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 12
    iget v1, v0, Landroidx/appcompat/widget/n0$a;->h:I

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    move v6, v4

    :goto_1
    return v6

    .line 13
    :cond_6
    iget v3, v0, Landroidx/appcompat/widget/n0$a;->h:I

    int-to-long v7, v3

    cmp-long v5, v1, v7

    if-lez v5, :cond_7

    return v4

    :cond_7
    const-wide/16 v4, 0x0

    .line 14
    iget v7, v0, Landroidx/appcompat/widget/n0$a;->n:I

    const/high16 v8, 0x447a0000    # 1000.0f

    if-eqz v7, :cond_a

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v7, v6, :cond_9

    const/4 v3, 0x2

    if-eq v7, v3, :cond_8

    goto :goto_2

    :cond_8
    long-to-float v1, v1

    div-float/2addr v1, v8

    .line 15
    iget v2, v0, Landroidx/appcompat/widget/n0$a;->d:I

    int-to-float v3, v2

    iget v4, v0, Landroidx/appcompat/widget/n0$a;->f:F

    mul-float v5, v4, v1

    add-float/2addr v3, v5

    iput v3, v0, Landroidx/appcompat/widget/n0$a;->e:F

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    div-float/2addr v4, v9

    add-float/2addr v2, v4

    float-to-double v4, v2

    goto :goto_2

    :cond_9
    long-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    mul-float v2, v1, v1

    .line 16
    iget v3, v0, Landroidx/appcompat/widget/n0$a;->d:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 17
    iget v4, v0, Landroidx/appcompat/widget/n0$a;->l:I

    int-to-float v5, v4

    mul-float/2addr v5, v3

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    mul-float/2addr v9, v1

    mul-float/2addr v9, v2

    sub-float/2addr v7, v9

    mul-float/2addr v5, v7

    float-to-double v7, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v3, v4

    neg-float v1, v1

    add-float/2addr v1, v2

    mul-float/2addr v3, v1

    .line 18
    iput v3, v0, Landroidx/appcompat/widget/n0$a;->e:F

    move-wide v4, v7

    goto :goto_2

    :cond_a
    long-to-float v1, v1

    .line 19
    iget v2, v0, Landroidx/appcompat/widget/n0$a;->i:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v7, 0x64

    if-ge v3, v7, :cond_b

    int-to-float v4, v3

    div-float/2addr v4, v2

    add-int/lit8 v5, v3, 0x1

    int-to-float v7, v5

    div-float/2addr v7, v2

    .line 20
    sget-object v2, Landroidx/appcompat/widget/n0$a;->z:[F

    aget v3, v2, v3

    .line 21
    aget v2, v2, v5

    sub-float/2addr v2, v3

    sub-float/2addr v7, v4

    div-float v5, v2, v7

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    add-float v4, v3, v1

    .line 22
    :cond_b
    iget v1, v0, Landroidx/appcompat/widget/n0$a;->j:I

    int-to-float v2, v1

    mul-float/2addr v4, v2

    float-to-double v2, v4

    int-to-float v1, v1

    mul-float/2addr v5, v1

    .line 23
    iget v1, v0, Landroidx/appcompat/widget/n0$a;->i:I

    int-to-float v1, v1

    div-float/2addr v5, v1

    mul-float/2addr v5, v8

    iput v5, v0, Landroidx/appcompat/widget/n0$a;->e:F

    move-wide v4, v2

    .line 24
    :goto_2
    iget v1, v0, Landroidx/appcompat/widget/n0$a;->a:I

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/n0$a;->b:I

    return v6
.end method

.method w(F)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/n0$a;->a:I

    iget v1, p0, Landroidx/appcompat/widget/n0$a;->c:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/n0$a;->b:I

    return-void
.end method
