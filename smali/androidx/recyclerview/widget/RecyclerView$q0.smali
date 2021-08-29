.class Landroidx/recyclerview/widget/RecyclerView$q0;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "q0"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field d:Landroidx/appcompat/widget/n0;

.field e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z

.field final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->e:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->f:Z

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->g:Z

    .line 5
    new-instance v0, Landroidx/appcompat/widget/n0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/n0;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    return-void
.end method

.method private a(IIII)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 6
    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 7
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    .line 8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$q0;->b(F)F

    move-result p1

    mul-float/2addr p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    .line 9
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private b(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lb/f/k/t;->T(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->c:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->b:I

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->e:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v1, v2, :cond_0

    .line 4
    iput-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->e:Landroid/view/animation/Interpolator;

    .line 5
    new-instance v1, Landroidx/appcompat/widget/n0;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/n0;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    .line 6
    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    const/4 v13, 0x0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$5400(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v14

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$5500(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result v15

    move/from16 v7, p1

    move/from16 v8, p2

    .line 8
    invoke-virtual/range {v4 .. v15}, Landroidx/appcompat/widget/n0;->e(IIIIIIIIZZF)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$q0;->e()V

    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->g:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q0;->d()V

    :goto_0
    return-void
.end method

.method public f(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$q0;->h(IIII)V

    return-void
.end method

.method public g(III)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$q0;->i(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public h(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$q0;->a(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$q0;->g(III)V

    return-void
.end method

.method public i(IIILandroid/view/animation/Interpolator;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->e:Landroid/view/animation/Interpolator;

    if-eq v1, p4, :cond_1

    .line 4
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->e:Landroid/view/animation/Interpolator;

    .line 5
    new-instance v1, Landroidx/appcompat/widget/n0;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/n0;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    .line 6
    :cond_1
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 p4, 0x0

    .line 7
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->c:I

    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->b:I

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/n0;->m(IIIII)V

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-ge p1, p3, :cond_2

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    invoke-virtual {p1}, Landroidx/appcompat/widget/n0;->c()Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$q0;->e()V

    .line 12
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->access$3100(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public j(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$q0;->a(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView$q0;->i(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/n0;->a()V

    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    if-nez v2, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$q0;->k()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->g:Z

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->f:Z

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 6
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->d:Landroidx/appcompat/widget/n0;

    .line 7
    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->c()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->g()I

    move-result v4

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->h()I

    move-result v5

    .line 10
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->b:I

    sub-int v6, v4, v6

    .line 11
    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->c:I

    sub-int v13, v5, v7

    .line 12
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->b:I

    .line 13
    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->c:I

    .line 14
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v10, v2

    .line 15
    aput v2, v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    .line 16
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v7, v5, v2

    sub-int/2addr v6, v7

    .line 18
    aget v7, v5, v3

    sub-int/2addr v13, v7

    .line 19
    aget v5, v5, v3

    invoke-static {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->access$3100(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v13}, Landroidx/recyclerview/widget/RecyclerView;->access$3100(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 21
    :goto_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 22
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 23
    :cond_2
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v7, :cond_5

    .line 24
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v7, v2

    .line 25
    aput v2, v7, v3

    .line 26
    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 27
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v7, v2

    .line 28
    aget v7, v7, v3

    sub-int/2addr v6, v8

    sub-int/2addr v13, v7

    .line 29
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView$n0;

    if-eqz v4, :cond_6

    .line 30
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$n0;->g()Z

    move-result v9

    if-nez v9, :cond_6

    .line 31
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$n0;->h()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 32
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$o0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$o0;->b()I

    move-result v9

    if-nez v9, :cond_3

    .line 33
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$n0;->r()V

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$n0;->f()I

    move-result v10

    if-lt v10, v9, :cond_4

    sub-int/2addr v9, v3

    .line 35
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$n0;->p(I)V

    .line 36
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$n0;->j(II)V

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$n0;->j(II)V

    goto :goto_1

    :cond_5
    move v7, v2

    move v8, v7

    .line 38
    :cond_6
    :goto_1
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 39
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 40
    :cond_7
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    .line 41
    aput v2, v4, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v4

    .line 42
    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 43
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v9, v4, v2

    sub-int/2addr v6, v9

    .line 44
    aget v4, v4, v3

    sub-int/2addr v13, v4

    if-nez v8, :cond_8

    if-eqz v7, :cond_9

    .line 45
    :cond_8
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 46
    :cond_9
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->access$5200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 47
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 48
    :cond_a
    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->g()I

    move-result v4

    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->i()I

    move-result v7

    if-ne v4, v7, :cond_b

    move v4, v3

    goto :goto_2

    :cond_b
    move v4, v2

    .line 49
    :goto_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->h()I

    move-result v7

    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->j()I

    move-result v8

    if-ne v7, v8, :cond_c

    move v7, v3

    goto :goto_3

    :cond_c
    move v7, v2

    .line 50
    :goto_3
    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->k()Z

    move-result v8

    if-nez v8, :cond_f

    if-nez v4, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    if-nez v7, :cond_f

    if-eqz v13, :cond_e

    goto :goto_4

    :cond_e
    move v4, v2

    goto :goto_5

    :cond_f
    :goto_4
    move v4, v3

    .line 51
    :goto_5
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView$n0;

    if-eqz v7, :cond_10

    .line 52
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$n0;->g()Z

    move-result v7

    if-eqz v7, :cond_10

    move v7, v3

    goto :goto_6

    :cond_10
    move v7, v2

    :goto_6
    if-nez v7, :cond_16

    if-eqz v4, :cond_16

    .line 53
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_15

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->access$5300(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 54
    invoke-virtual {v1}, Landroidx/appcompat/widget/n0;->f()F

    move-result v1

    float-to-int v1, v1

    if-gez v6, :cond_11

    neg-int v4, v1

    goto :goto_7

    :cond_11
    if-lez v6, :cond_12

    move v4, v1

    goto :goto_7

    :cond_12
    move v4, v2

    :goto_7
    if-gez v13, :cond_13

    neg-int v1, v1

    goto :goto_8

    :cond_13
    if-lez v13, :cond_14

    goto :goto_8

    :cond_14
    move v1, v2

    .line 55
    :goto_8
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 56
    :cond_15
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_17

    .line 57
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/h$b;->b()V

    goto :goto_9

    .line 58
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$q0;->e()V

    .line 59
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/h;

    if-eqz v4, :cond_17

    .line 60
    invoke-virtual {v4, v1, v6, v13}, Landroidx/recyclerview/widget/h;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 61
    :cond_17
    :goto_9
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$z;->g:Landroidx/recyclerview/widget/RecyclerView$n0;

    if-eqz v1, :cond_18

    .line 62
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$n0;->g()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 63
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$n0;->j(II)V

    .line 64
    :cond_18
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->f:Z

    .line 65
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->g:Z

    if-eqz v1, :cond_19

    .line 66
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$q0;->d()V

    goto :goto_a

    .line 67
    :cond_19
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 68
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$q0;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :goto_a
    return-void
.end method
