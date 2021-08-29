.class public Landroidx/appcompat/widget/n0;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/n0$b;,
        Landroidx/appcompat/widget/n0$a;
    }
.end annotation


# static fields
.field private static f:J


# instance fields
.field private a:I

.field private final b:Landroidx/appcompat/widget/n0$a;

.field private final c:Landroidx/appcompat/widget/n0$a;

.field private d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/n0;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Landroidx/appcompat/widget/n0$b;

    invoke-direct {p2}, Landroidx/appcompat/widget/n0$b;-><init>()V

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/n0;->d:Landroid/view/animation/Interpolator;

    .line 4
    iput-boolean p3, p0, Landroidx/appcompat/widget/n0;->e:Z

    .line 5
    new-instance p2, Landroidx/appcompat/widget/n0$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/n0$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    .line 6
    new-instance p2, Landroidx/appcompat/widget/n0$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/n0$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lb/n/e/a;->a(Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n0;->l(Z)V

    const-string p1, "SeslOverScroller"

    const-string p2, "does NOT support Smoothscroll booster thus Smoothscroll\'s disabled"

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/appcompat/widget/n0;->f:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->i()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->i()V

    return-void
.end method

.method public c()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/n0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/n0;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->a(Landroidx/appcompat/widget/n0$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->v()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->i()V

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->a(Landroidx/appcompat/widget/n0$a;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->v()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0$a;->i()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->f(Landroidx/appcompat/widget/n0$a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->e(Landroidx/appcompat/widget/n0$a;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 12
    iget-object v4, p0, Landroidx/appcompat/widget/n0;->d:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 13
    iget-object v2, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/n0$a;->w(F)V

    .line 14
    iget-object v2, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/n0$a;->w(F)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/n0;->a()V

    :cond_5
    :goto_0
    return v1
.end method

.method public d(IIIIIIIIIIZZF)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-boolean v1, v0, Landroidx/appcompat/widget/n0;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/n0;->k()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p11, :cond_0

    .line 2
    iget-object v1, v0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v1}, Landroidx/appcompat/widget/n0$a;->c(Landroidx/appcompat/widget/n0$a;)F

    move-result v1

    .line 3
    iget-object v2, v0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-static {v2}, Landroidx/appcompat/widget/n0$a;->c(Landroidx/appcompat/widget/n0$a;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    .line 4
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    move/from16 v5, p4

    int-to-float v6, v5

    .line 5
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move/from16 v5, p4

    :cond_2
    move v2, v5

    move v5, v3

    :goto_0
    if-eqz p12, :cond_5

    const/4 v1, 0x0

    cmpg-float v3, p13, v1

    const v4, 0x418547ae    # 16.66f

    if-gez v3, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    cmpl-float v1, p13, v4

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v4, p13

    :goto_1
    float-to-long v3, v4

    .line 6
    sput-wide v3, Landroidx/appcompat/widget/n0;->f:J

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    .line 7
    sput-wide v3, Landroidx/appcompat/widget/n0;->f:J

    :goto_2
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroidx/appcompat/widget/n0;->a:I

    .line 9
    iget-object v3, v0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/widget/n0$a;->k(IIIII)V

    .line 10
    iget-object v6, v0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/n0$a;->k(IIIII)V

    return-void
.end method

.method public e(IIIIIIIIZZF)V
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    .line 1
    invoke-virtual/range {v0 .. v13}, Landroidx/appcompat/widget/n0;->d(IIIIIIIIIIZZF)V

    return-void
.end method

.method public f()F
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->c(Landroidx/appcompat/widget/n0$a;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-static {v2}, Landroidx/appcompat/widget/n0$a;->c(Landroidx/appcompat/widget/n0$a;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->b(Landroidx/appcompat/widget/n0$a;)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->b(Landroidx/appcompat/widget/n0$a;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->d(Landroidx/appcompat/widget/n0$a;)I

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->d(Landroidx/appcompat/widget/n0$a;)I

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->a(Landroidx/appcompat/widget/n0$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-static {v0}, Landroidx/appcompat/widget/n0$a;->a(Landroidx/appcompat/widget/n0$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/n0$a;->q(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/n0$a;->q(I)V

    return-void
.end method

.method public m(IIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/n0;->a:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/n0;->b:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {v0, p1, p3, p5}, Landroidx/appcompat/widget/n0$a;->t(III)V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/n0;->c:Landroidx/appcompat/widget/n0$a;

    invoke-virtual {p1, p2, p4, p5}, Landroidx/appcompat/widget/n0$a;->t(III)V

    return-void
.end method
