.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$i;,
        Landroidx/viewpager/widget/ViewPager$d;,
        Landroidx/viewpager/widget/ViewPager$h;,
        Landroidx/viewpager/widget/ViewPager$SavedState;,
        Landroidx/viewpager/widget/ViewPager$b;,
        Landroidx/viewpager/widget/ViewPager$e;,
        Landroidx/viewpager/widget/ViewPager$g;,
        Landroidx/viewpager/widget/ViewPager$f;,
        Landroidx/viewpager/widget/ViewPager$c;
    }
.end annotation


# static fields
.field static final o0:[I

.field private static final p0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/ViewPager$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final q0:Landroidx/viewpager/widget/ViewPager$i;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:Z

.field private I:F

.field private J:I

.field private K:Z

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:I

.field private Q:Landroid/view/VelocityTracker;

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:Z

.field private W:Landroidx/core/widget/i;

.field private a0:Landroidx/core/widget/i;

.field private b:I

.field private b0:Z

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager$c;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Z

.field private final d:Landroidx/viewpager/widget/ViewPager$c;

.field private d0:I

.field private final e:Landroid/graphics/Rect;

.field private e0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroidx/viewpager/widget/a;

.field private f0:Landroidx/viewpager/widget/ViewPager$f;

.field g:I

.field private g0:Landroidx/viewpager/widget/ViewPager$f;

.field private h:I

.field private h0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Parcelable;

.field private i0:Landroidx/viewpager/widget/ViewPager$g;

.field private j:Ljava/lang/ClassLoader;

.field private j0:I

.field private k:Landroid/widget/Scroller;

.field private k0:I

.field private l:Z

.field private l0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroidx/viewpager/widget/ViewPager$h;

.field private final m0:Ljava/lang/Runnable;

.field private n:I

.field private n0:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->o0:[I

    .line 2
    new-instance v0, Landroidx/viewpager/widget/ViewPager$a;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$a;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->p0:Ljava/util/Comparator;

    .line 3
    new-instance v0, Landroidx/viewpager/widget/ViewPager$i;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$i;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->q0:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method private B(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    if-eqz p1, :cond_0

    return v2

    .line 3
    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->c0:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/ViewPager;->x(IFI)V

    .line 5
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->c0:Z

    if-eqz p1, :cond_1

    return v2

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x1000000

    sub-int p1, v0, p1

    .line 8
    :cond_3
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->t()Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 10
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 11
    iget v6, v0, Landroidx/viewpager/widget/ViewPager$c;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 12
    iget v3, v0, Landroidx/viewpager/widget/ViewPager$c;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 13
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->c0:Z

    .line 14
    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/ViewPager;->x(IFI)V

    .line 15
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->c0:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private C(F)Z
    .locals 11

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->E:Z

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    .line 5
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    .line 7
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    .line 8
    :goto_0
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    sub-float/2addr v3, p1

    .line 9
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v3

    .line 11
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v3

    const/high16 v4, 0x4b800000    # 1.6777216E7f

    if-eqz v3, :cond_2

    sub-float p1, v4, p1

    .line 12
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 13
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$c;

    .line 14
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$c;->b:I

    const/4 v7, 0x1

    if-nez v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    if-eqz v6, :cond_5

    .line 15
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v5

    if-eqz v5, :cond_4

    int-to-float v5, v3

    .line 16
    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    mul-float/2addr v8, v5

    add-float/2addr v8, v5

    goto :goto_3

    :cond_4
    int-to-float v5, v3

    .line 17
    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    goto :goto_2

    .line 18
    :cond_5
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$c;->e:F

    int-to-float v8, v3

    :goto_2
    mul-float/2addr v8, v5

    .line 19
    :goto_3
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$c;

    .line 20
    iget v9, v5, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v10}, Landroidx/viewpager/widget/a;->c()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_6

    move v9, v7

    goto :goto_4

    :cond_6
    move v9, v1

    :goto_4
    if-eqz v9, :cond_8

    .line 21
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v5

    if-eqz v5, :cond_7

    int-to-float v5, v3

    .line 22
    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    mul-float/2addr v10, v5

    add-float/2addr v10, v5

    goto :goto_6

    :cond_7
    int-to-float v5, v3

    .line 23
    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    goto :goto_5

    .line 24
    :cond_8
    iget v5, v5, Landroidx/viewpager/widget/ViewPager$c;->e:F

    int-to-float v10, v3

    :goto_5
    mul-float/2addr v10, v5

    :goto_6
    cmpg-float v5, p1, v8

    if-gez v5, :cond_a

    if-eqz v6, :cond_9

    sub-float p1, v8, p1

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v1, v3

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/core/widget/i;->onPull(F)V

    move v1, v7

    :cond_9
    move p1, v8

    goto :goto_7

    :cond_a
    cmpl-float v0, p1, v10

    if-lez v0, :cond_c

    if-eqz v9, :cond_b

    sub-float/2addr p1, v10

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/i;->onPull(F)V

    move v1, v7

    :cond_b
    move p1, v10

    .line 27
    :cond_c
    :goto_7
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v0

    if-eqz v0, :cond_d

    sub-float p1, v4, p1

    .line 28
    :cond_d
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    float-to-int v2, p1

    int-to-float v3, v2

    sub-float/2addr p1, v3

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 30
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->B(I)Z

    return v1
.end method

.method private F(IIII)V
    .locals 1

    if-lez p2, :cond_2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 6
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->M()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 7
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x4b800000    # 1.6777216E7f

    int-to-float p1, p1

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    float-to-int p1, p2

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2

    .line 9
    :cond_2
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->u(I)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 10
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$c;->e:F

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 11
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x0

    .line 13
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;->g(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method private G()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$d;

    .line 4
    iget-boolean v1, v1, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private J(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private K()Z
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->o()V

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->onRelease()V

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->onRelease()V

    .line 5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

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

.method private L(IZIZ)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->u(I)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3
    iget v3, v0, Landroidx/viewpager/widget/ViewPager$c;->e:F

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    invoke-static {v3, v4, v5}, Lb/f/f/a;->c(FFF)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 4
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$c;->d:F

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    const/high16 v2, 0x1000000

    sub-int/2addr v2, v0

    sub-int v3, v2, v3

    goto :goto_0

    :cond_0
    move v3, v1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0, v3, v1, p3}, Landroidx/viewpager/widget/ViewPager;->R(III)V

    if-eqz p4, :cond_4

    .line 7
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    .line 9
    :cond_3
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->g(Z)V

    .line 10
    invoke-virtual {p0, v3, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 11
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->B(I)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private M()I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000000

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    return v0
.end method

.method private N()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->K:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private S()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->k0:I

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->q0:Landroidx/viewpager/widget/ViewPager$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private e(Landroidx/viewpager/widget/ViewPager$c;ILandroidx/viewpager/widget/ViewPager$c;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()I

    move-result v0

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p3, :cond_6

    .line 4
    iget v1, p3, Landroidx/viewpager/widget/ViewPager$c;->b:I

    .line 5
    iget v3, p1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    .line 6
    iget v4, p3, Landroidx/viewpager/widget/ViewPager$c;->e:F

    iget p3, p3, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 7
    iget p3, p1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-gt v1, p3, :cond_6

    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_6

    .line 8
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager$c;

    .line 9
    :goto_2
    iget v5, p3, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-le v1, v5, :cond_1

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 10
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_2

    .line 11
    :cond_1
    :goto_3
    iget v5, p3, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ge v1, v5, :cond_2

    .line 12
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 13
    :cond_2
    iput v4, p3, Landroidx/viewpager/widget/ViewPager$c;->e:F

    .line 14
    iget p3, p3, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr p3, v2

    add-float/2addr v4, p3

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_6

    .line 15
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 16
    iget p3, p3, Landroidx/viewpager/widget/ViewPager$c;->e:F

    add-int/lit8 v1, v1, -0x1

    .line 17
    :goto_4
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-lt v1, v4, :cond_6

    if-ltz v3, :cond_6

    .line 18
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$c;

    .line 19
    :goto_5
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ge v1, v5, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 20
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_5

    .line 21
    :cond_4
    :goto_6
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-le v1, v5, :cond_5

    .line 22
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v5, v1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 23
    :cond_5
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    .line 24
    iput p3, v4, Landroidx/viewpager/widget/ViewPager$c;->e:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 25
    :cond_6
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 26
    iget v1, p1, Landroidx/viewpager/widget/ViewPager$c;->e:F

    .line 27
    iget v3, p1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    const v3, -0x800001

    .line 28
    :goto_7
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    .line 29
    iget v3, p1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v0, :cond_8

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$c;->e:F

    iget v6, p1, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v3, v6

    sub-float/2addr v3, v5

    goto :goto_8

    :cond_8
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    add-int/lit8 v3, p2, -0x1

    :goto_9
    if-ltz v3, :cond_b

    .line 30
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$c;

    .line 31
    :goto_a
    iget v7, v6, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-le v4, v7, :cond_9

    .line 32
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v4}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    move v4, v8

    goto :goto_a

    .line 33
    :cond_9
    iget v8, v6, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v8, v2

    sub-float/2addr v1, v8

    .line 34
    iput v1, v6, Landroidx/viewpager/widget/ViewPager$c;->e:F

    if-nez v7, :cond_a

    .line 35
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 36
    :cond_b
    iget v1, p1, Landroidx/viewpager/widget/ViewPager$c;->e:F

    iget v3, p1, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 37
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 38
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$c;

    .line 39
    :goto_c
    iget v4, v3, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ge p1, v4, :cond_c

    .line 40
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, p1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v6

    goto :goto_c

    :cond_c
    if-ne v4, v0, :cond_d

    .line 41
    iget v4, v3, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v5

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 42
    :cond_d
    iput v1, v3, Landroidx/viewpager/widget/ViewPager$c;->e:F

    .line 43
    iget v3, v3, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method private g(Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->n0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 3
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 7
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 8
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    .line 10
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->B(I)Z

    .line 11
    :cond_2
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    move v3, v2

    .line 12
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 13
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$c;

    .line 14
    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$c;->c:Z

    if-eqz v5, :cond_3

    .line 15
    iput-boolean v2, v4, Landroidx/viewpager/widget/ViewPager$c;->c:Z

    move v0, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->m0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lb/f/k/t;->T(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 17
    :cond_5
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->m0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private i(IFII)I
    .locals 2

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->T:I

    const/4 v1, 0x0

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->R:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    move p2, v1

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    :goto_0
    sub-int/2addr p1, p2

    goto :goto_2

    .line 3
    :cond_1
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    .line 4
    :goto_1
    iget p4, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    add-float/2addr p2, p3

    float-to-int p2, p2

    mul-int/2addr p4, p2

    sub-int/2addr p1, p4

    .line 5
    :goto_2
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 6
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager$c;

    .line 7
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager$c;

    .line 8
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget p3, p3, Landroidx/viewpager/widget/ViewPager$c;->b:I

    invoke-static {p1, p2, p3}, Lb/f/f/a;->d(III)I

    move-result p1

    :cond_3
    return p1
.end method

.method private j(IFI)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f0:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$f;->onPageScrolled(IFI)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$f;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$f;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private k(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f0:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->onPageSelected(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$f;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f0:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$f;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$f;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private n(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->j0:I

    goto :goto_1

    :cond_0
    move v3, v1

    .line 3
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Z

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private q(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 8
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 9
    check-cast p2, Landroid/view/ViewGroup;

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 12
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 13
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->u:Z

    :cond_0
    return-void
.end method

.method private t()Landroidx/viewpager/widget/ViewPager$c;
    .locals 12

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->M()I

    move-result v0

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-lez v1, :cond_1

    .line 3
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v4

    move v7, v5

    move v9, v6

    move v5, v2

    .line 4
    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 5
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$c;

    if-nez v9, :cond_2

    .line 6
    iget v11, v10, Landroidx/viewpager/widget/ViewPager$c;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 7
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroidx/viewpager/widget/ViewPager$c;

    add-float/2addr v2, v5

    add-float/2addr v2, v3

    .line 8
    iput v2, v10, Landroidx/viewpager/widget/ViewPager$c;->e:F

    .line 9
    iput v7, v10, Landroidx/viewpager/widget/ViewPager$c;->b:I

    .line 10
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v2, v7}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v2

    iput v2, v10, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-int/lit8 v8, v8, -0x1

    .line 11
    :cond_2
    iget v2, v10, Landroidx/viewpager/widget/ViewPager$c;->e:F

    .line 12
    iget v5, v10, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v5, v2

    add-float/2addr v5, v3

    if-nez v9, :cond_4

    cmpl-float v7, v0, v2

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    return-object v1

    :cond_4
    :goto_3
    cmpg-float v1, v0, v5

    if-ltz v1, :cond_6

    .line 13
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    if-ne v8, v1, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    iget v7, v10, Landroidx/viewpager/widget/ViewPager$c;->b:I

    .line 15
    iget v5, v10, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    move-object v1, v10

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v1
.end method

.method private static v(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    const-class v0, Landroidx/viewpager/widget/ViewPager$b;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private w(FF)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x0

    if-gez v0, :cond_1

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    cmpg-float p1, p2, v2

    if-gez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private y(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    .line 6
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->O(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method D()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->E(I)V

    return-void
.end method

.method E(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    const/4 v3, 0x2

    if-eq v2, v1, :cond_2

    .line 2
    iget-boolean v5, v0, Landroidx/viewpager/widget/ViewPager;->K:Z

    if-eqz v5, :cond_1

    if-ge v2, v1, :cond_0

    const/16 v2, 0x42

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    move v3, v2

    .line 3
    :cond_1
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->u(I)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v2

    .line 4
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_1
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-nez v1, :cond_3

    .line 6
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->S()V

    return-void

    .line 7
    :cond_3
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->v:Z

    if-eqz v1, :cond_4

    .line 8
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->S()V

    return-void

    .line 9
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->n(Landroid/view/ViewGroup;)V

    .line 11
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 12
    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 13
    iget-object v7, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v7}, Landroidx/viewpager/widget/a;->c()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    .line 14
    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->b:I

    if-ne v7, v8, :cond_21

    move v8, v6

    .line 16
    :goto_2
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 17
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$c;

    .line 18
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-lt v10, v11, :cond_6

    if-ne v10, v11, :cond_7

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_8

    if-lez v7, :cond_8

    .line 19
    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {v0, v9, v8}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v9

    :cond_8
    if-eqz v9, :cond_19

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_9

    .line 20
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    .line 21
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_a

    const/4 v15, 0x0

    goto :goto_5

    .line 22
    :cond_a
    iget v15, v9, Landroidx/viewpager/widget/ViewPager$c;->d:F

    sub-float v15, v14, v15

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    int-to-float v6, v13

    div-float/2addr v4, v6

    add-float/2addr v15, v4

    .line 24
    :goto_5
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int/lit8 v4, v4, -0x1

    const/4 v6, 0x0

    :goto_6
    if-ltz v4, :cond_10

    cmpl-float v16, v6, v15

    if-ltz v16, :cond_c

    if-ge v4, v5, :cond_c

    if-nez v12, :cond_b

    goto :goto_8

    .line 25
    :cond_b
    iget v10, v12, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ne v4, v10, :cond_f

    iget-boolean v10, v12, Landroidx/viewpager/widget/ViewPager$c;->c:Z

    if-nez v10, :cond_f

    .line 26
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    invoke-virtual {v10, v0, v4, v12}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v11, :cond_e

    .line 28
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_7

    :cond_c
    if-eqz v12, :cond_d

    .line 29
    iget v10, v12, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ne v4, v10, :cond_d

    .line 30
    iget v10, v12, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_e

    .line 31
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_7

    :cond_d
    add-int/lit8 v10, v11, 0x1

    .line 32
    invoke-virtual {v0, v4, v10}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v10

    .line 33
    iget v10, v10, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    if-ltz v11, :cond_e

    .line 34
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_7

    :cond_e
    const/4 v10, 0x0

    :goto_7
    move-object v12, v10

    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 35
    :cond_10
    :goto_8
    iget v4, v9, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-int/lit8 v5, v8, 0x1

    cmpg-float v6, v4, v14

    if-gez v6, :cond_18

    .line 36
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_9

    :cond_11
    const/4 v6, 0x0

    :goto_9
    if-gtz v13, :cond_12

    const/4 v10, 0x0

    goto :goto_a

    .line 37
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v13

    div-float/2addr v10, v11

    add-float/2addr v10, v14

    .line 38
    :goto_a
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    :goto_b
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v7, :cond_18

    cmpl-float v12, v4, v10

    if-ltz v12, :cond_15

    if-le v11, v1, :cond_15

    if-nez v6, :cond_13

    goto :goto_d

    .line 39
    :cond_13
    iget v12, v6, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ne v11, v12, :cond_17

    iget-boolean v12, v6, Landroidx/viewpager/widget/ViewPager$c;->c:Z

    if-nez v12, :cond_17

    .line 40
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v6, v6, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v6}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 42
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_c

    :cond_14
    const/4 v6, 0x0

    goto :goto_c

    :cond_15
    if-eqz v6, :cond_16

    .line 43
    iget v12, v6, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ne v11, v12, :cond_16

    .line 44
    iget v6, v6, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    .line 45
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_c

    .line 46
    :cond_16
    invoke-virtual {v0, v11, v5}, Landroidx/viewpager/widget/ViewPager;->a(II)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 47
    iget v6, v6, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v4, v6

    .line 48
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$c;

    :cond_17
    :goto_c
    goto :goto_b

    .line 49
    :cond_18
    :goto_d
    invoke-direct {v0, v9, v8, v2}, Landroidx/viewpager/widget/ViewPager;->e(Landroidx/viewpager/widget/ViewPager$c;ILandroidx/viewpager/widget/ViewPager$c;)V

    .line 50
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    iget-object v4, v9, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v4}, Landroidx/viewpager/widget/a;->l(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 51
    :cond_19
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$d;

    .line 55
    iput v2, v5, Landroidx/viewpager/widget/ViewPager$d;->f:I

    .line 56
    iget-boolean v6, v5, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-nez v6, :cond_1a

    iget v6, v5, Landroidx/viewpager/widget/ViewPager$d;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1b

    .line 57
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 58
    iget v6, v4, Landroidx/viewpager/widget/ViewPager$c;->d:F

    iput v6, v5, Landroidx/viewpager/widget/ViewPager$d;->c:F

    .line 59
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iput v4, v5, Landroidx/viewpager/widget/ViewPager$d;->e:I

    goto :goto_f

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 60
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->S()V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 63
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->r(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v4

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1e

    .line 64
    iget v1, v4, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-eq v1, v2, :cond_20

    :cond_1e
    const/4 v6, 0x0

    .line 65
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_20

    .line 66
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 68
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v2, v4, :cond_1f

    .line 69
    invoke-virtual {v1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_12

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_20
    :goto_12
    return-void

    .line 70
    :cond_21
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    .line 71
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-class v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public H(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public I(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public O(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->P(IZZ)V

    return-void
.end method

.method P(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->Q(IZZI)V

    return-void
.end method

.method Q(IZZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    .line 2
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->c()I

    move-result p1

    sub-int/2addr p1, p3

    .line 6
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 7
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 8
    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 9
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$c;

    iput-boolean p3, v2, Landroidx/viewpager/widget/ViewPager$c;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-eq v0, p1, :cond_6

    move v1, p3

    .line 11
    :cond_6
    iget-boolean p3, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    if-eqz p3, :cond_8

    .line 12
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-eqz v1, :cond_7

    .line 13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->k(I)V

    .line 14
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 15
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->E(I)V

    .line 16
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/ViewPager;->L(IZIZ)V

    :goto_2
    return-void

    .line 17
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method R(III)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 5
    :goto_1
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_2
    move v4, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 9
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->g(Z)V

    .line 10
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->D()V

    .line 11
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    return-void

    .line 12
    :cond_4
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 13
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 14
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p1

    .line 15
    div-int/lit8 p2, p1, 0x2

    .line 16
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 17
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->m(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 18
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_5

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 19
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 20
    :cond_5
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 21
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 23
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    .line 24
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 25
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    return-void
.end method

.method a(II)Landroidx/viewpager/widget/ViewPager$c;
    .locals 2

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager$c;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$c;-><init>()V

    .line 2
    iput p1, v0, Landroidx/viewpager/widget/ViewPager$c;->b:I

    .line 3
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/a;->g(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/a;->f(I)F

    move-result p1

    iput p1, v0, Landroidx/viewpager/widget/ViewPager$c;->d:F

    if-ltz p2, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v4, v5, :cond_1

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_6

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_5

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v2, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/ViewPager$d;

    .line 4
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    invoke-static {p1}, Landroidx/viewpager/widget/ViewPager;->v(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    .line 5
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$d;->d:Z

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 9
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public b(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 4
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$d;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    .line 2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 5
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 6
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 8
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->B(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 11
    :cond_1
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    return-void

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->g(Z)V

    return-void
.end method

.method public d(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_2

    .line 3
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_2
    if-nez v4, :cond_4

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 11
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 13
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->q(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 14
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->q(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 15
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->z()Z

    move-result v0

    goto :goto_5

    .line 16
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    .line 17
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->q(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 18
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/ViewPager;->q(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 19
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->A()Z

    move-result v0

    goto :goto_5

    .line 20
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 21
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->A()Z

    move-result v2

    goto :goto_7

    .line 22
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->z()Z

    move-result v2

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 23
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->p(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v4, v5, :cond_1

    .line 8
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->finish()V

    .line 6
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    invoke-virtual {p1}, Landroidx/core/widget/i;->finish()V

    goto/16 :goto_3

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    const/high16 v2, 0x4b800000    # 1.6777216E7f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    const/high16 v6, 0x43870000    # 270.0f

    .line 11
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 12
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v6

    if-eqz v6, :cond_2

    neg-int v6, v4

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    add-float/2addr v7, v3

    neg-float v7, v7

    int-to-float v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    neg-int v6, v4

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    int-to-float v8, v5

    mul-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    :goto_1
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    invoke-virtual {v6, v4, v5}, Landroidx/core/widget/i;->setSize(II)V

    .line 16
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->W:Landroidx/core/widget/i;

    invoke-virtual {v4, p1}, Landroidx/core/widget/i;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 18
    :cond_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x42b40000    # 90.0f

    .line 22
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 23
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->r:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    sub-float/2addr v6, v2

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    add-float/2addr v6, v3

    neg-float v3, v6

    int-to-float v6, v4

    mul-float/2addr v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    :goto_2
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    invoke-virtual {v2, v5, v4}, Landroidx/core/widget/i;->setSize(II)V

    .line 27
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->a0:Landroidx/core/widget/i;

    invoke-virtual {v2, p1}, Landroidx/core/widget/i;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 29
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected f(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 11
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/ViewPager;->f(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager$d;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$d;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/viewpager/widget/ViewPager$d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->k0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$d;

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$d;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    return v0
.end method

.method h()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()I

    move-result v0

    .line 2
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->b:I

    .line 3
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 5
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    move v5, v4

    move v6, v5

    .line 6
    :goto_1
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 7
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$c;

    .line 8
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v9, v7, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/a;->d(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_2

    .line 10
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/a;->n(Landroid/view/ViewGroup;)V

    move v6, v3

    .line 11
    :cond_2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget v8, v7, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget-object v9, v7, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 12
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    iget v7, v7, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ne v1, v7, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_3
    :goto_2
    move v1, v3

    goto :goto_3

    .line 14
    :cond_4
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-eq v9, v8, :cond_6

    .line 15
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v9, v1, :cond_5

    move v2, v8

    .line 16
    :cond_5
    iput v8, v7, Landroidx/viewpager/widget/ViewPager$c;->b:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    .line 17
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    .line 18
    :cond_8
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    sget-object v5, Landroidx/viewpager/widget/ViewPager;->p0:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_b

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_a

    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 21
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$d;

    .line 22
    iget-boolean v6, v5, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-nez v6, :cond_9

    const/4 v6, 0x0

    .line 23
    iput v6, v5, Landroidx/viewpager/widget/ViewPager$d;->c:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 24
    :cond_a
    invoke-virtual {p0, v2, v4, v3}, Landroidx/viewpager/widget/ViewPager;->P(IZZ)V

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b
    return-void
.end method

.method m(F)F
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

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    if-lez v1, :cond_6

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 5
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 6
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$c;

    .line 7
    iget v7, v5, Landroidx/viewpager/widget/ViewPager$c;->e:F

    .line 8
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 9
    iget v9, v5, Landroidx/viewpager/widget/ViewPager$c;->b:I

    .line 10
    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$c;

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$c;->b:I

    :goto_0
    if-ge v9, v10, :cond_6

    .line 11
    :goto_1
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 12
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$c;

    goto :goto_1

    .line 13
    :cond_0
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$c;->b:I

    const/high16 v12, 0x4b800000    # 1.6777216E7f

    if-ne v9, v11, :cond_2

    .line 14
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 15
    iget v7, v5, Landroidx/viewpager/widget/ViewPager$c;->e:F

    sub-float/2addr v12, v7

    goto :goto_2

    .line 16
    :cond_1
    iget v7, v5, Landroidx/viewpager/widget/ViewPager$c;->e:F

    iget v11, v5, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v7, v11

    mul-float v12, v7, v4

    .line 17
    :goto_2
    iget v7, v5, Landroidx/viewpager/widget/ViewPager$c;->e:F

    iget v11, v5, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_4

    .line 18
    :cond_2
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/a;->f(I)F

    move-result v11

    .line 19
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v13

    if-eqz v13, :cond_3

    sub-float/2addr v12, v7

    goto :goto_3

    :cond_3
    add-float v12, v7, v11

    mul-float/2addr v12, v4

    :goto_3
    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 20
    :goto_4
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4

    .line 21
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    .line 22
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->q:I

    .line 23
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_4
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_5
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_6
    :goto_6
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->D:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 4
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1, v3}, Landroidx/viewpager/widget/ViewPager;->O(IZ)V

    return v3

    :cond_1
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 5
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v3}, Landroidx/viewpager/widget/ViewPager;->O(IZ)V

    return v3

    .line 6
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v1, :cond_1

    return v9

    .line 3
    :cond_1
    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 4
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->y(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 5
    :cond_4
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->P:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_3

    .line 6
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 8
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->L:F

    sub-float v1, v10, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 10
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 11
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->O:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_6

    .line 12
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->L:F

    invoke-direct {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->w(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->f(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iput v10, v6, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 15
    iput v12, v6, Landroidx/viewpager/widget/ViewPager;->M:F

    .line 16
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    return v8

    .line 17
    :cond_6
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->B:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->I:F

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_8

    .line 18
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->x:Z

    .line 19
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/ViewPager;->J(Z)V

    .line 20
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 21
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->N:F

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->B:I

    int-to-float v1, v1

    if-lez v14, :cond_7

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 22
    iput v12, v6, Landroidx/viewpager/widget/ViewPager;->M:F

    .line 23
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 24
    :cond_8
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->B:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 25
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    .line 26
    :cond_9
    :goto_1
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v0, :cond_e

    .line 27
    invoke-direct {p0, v10}, Landroidx/viewpager/widget/ViewPager;->C(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    goto :goto_3

    .line 29
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->N:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->O:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->M:F

    .line 31
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->P:I

    .line 32
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->y:Z

    .line 33
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->l:Z

    .line 34
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->H:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x4002

    .line 35
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->G:I

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->B:I

    goto :goto_2

    .line 37
    :cond_b
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->F:I

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->B:I

    .line 38
    :cond_c
    :goto_2
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 39
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->n0:I

    if-ne v0, v1, :cond_d

    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    .line 40
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->U:I

    if-le v0, v1, :cond_d

    .line 41
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 42
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->v:Z

    .line 43
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->D()V

    .line 44
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->x:Z

    .line 45
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/ViewPager;->J(Z)V

    .line 46
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_3

    .line 47
    :cond_d
    invoke-direct {p0, v8}, Landroidx/viewpager/widget/ViewPager;->g(Z)V

    .line 48
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->x:Z

    .line 49
    :cond_e
    :goto_3
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    .line 50
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    .line 51
    :cond_f
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 52
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->x:Z

    return v0

    .line 53
    :cond_10
    :goto_4
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->K()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 7
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$d;

    .line 10
    iget-boolean v14, v12, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-eqz v14, :cond_6

    .line 11
    iget v12, v12, Landroidx/viewpager/widget/ViewPager$d;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 20
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 21
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 22
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v1, :cond_b

    .line 23
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 24
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v12, :cond_a

    .line 25
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$d;

    .line 26
    iget-boolean v13, v10, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-nez v13, :cond_a

    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v13

    if-eqz v13, :cond_a

    int-to-float v14, v2

    .line 27
    iget v13, v13, Landroidx/viewpager/widget/ViewPager$c;->e:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 28
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v15

    if-eqz v15, :cond_8

    const/high16 v15, 0x1000000

    sub-int/2addr v15, v6

    sub-int/2addr v15, v13

    .line 29
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v15, v13

    goto :goto_6

    :cond_8
    add-int v15, v4, v13

    .line 30
    :goto_6
    iget-boolean v13, v10, Landroidx/viewpager/widget/ViewPager$d;->d:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    .line 31
    iput-boolean v13, v10, Landroidx/viewpager/widget/ViewPager$d;->d:Z

    .line 32
    iget v10, v10, Landroidx/viewpager/widget/ViewPager$d;->c:F

    mul-float/2addr v14, v10

    float-to-int v10, v14

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 33
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 34
    invoke-virtual {v9, v10, v13}, Landroid/view/View;->measure(II)V

    .line 35
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v15

    .line 36
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 37
    invoke-virtual {v9, v15, v5, v10, v13}, Landroid/view/View;->layout(IIII)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 38
    :cond_b
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->p:I

    sub-int/2addr v3, v7

    .line 39
    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->q:I

    .line 40
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->d0:I

    .line 41
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->E:Z

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    .line 42
    :cond_d
    :goto_7
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->g:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->L(IZIZ)V

    .line 43
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->E:Z

    .line 44
    :goto_8
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 2
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 5
    div-int/lit8 p2, p1, 0xa

    .line 6
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->A:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$d;

    if-eqz v3, :cond_b

    .line 13
    iget-boolean v7, v3, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-eqz v7, :cond_b

    .line 14
    iget v7, v3, Landroidx/viewpager/widget/ViewPager$d;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    .line 15
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p1

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_7
    move v10, p1

    .line 16
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    .line 17
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 18
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 19
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 24
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    .line 25
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->D()V

    .line 26
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_f

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_e

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$d;

    if-eqz v4, :cond_d

    .line 31
    iget-boolean v6, v4, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-nez v6, :cond_e

    :cond_d
    int-to-float v6, p1

    .line 32
    iget v4, v4, Landroidx/viewpager/widget/ViewPager$d;->c:F

    mul-float/2addr v6, v4

    float-to-int v4, v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 33
    invoke-virtual {v2, v4, p2}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    iget v6, v6, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-ne v6, v7, :cond_1

    .line 6
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->c:Landroid/os/Parcelable;

    iget-object v2, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/a;->j(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 7
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->P(IZZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->b:I

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    .line 9
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->c:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    .line 10
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->d:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->K:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->b:I

    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->k()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->c:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 2
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->F(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->V:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->c()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 4
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    .line 6
    :cond_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_b

    const/4 v3, 0x2

    const-string v4, "ev.getPointerIdBits() = "

    const-string v5, "ev.getPointerCount() = "

    const-string v6, "ViewPager"

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->y(Landroid/view/MotionEvent;)V

    .line 9
    :try_start_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->L:F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP, catch IllegalArgumentException, mActivePointerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev.findPointerIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb/n/h/c;->a(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    throw v0

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 16
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 17
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->L:F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_POINTER_DOWN, catch IllegalArgumentException, mActivePointerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb/n/h/c;->a(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    throw v1

    .line 24
    :cond_6
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz p1, :cond_e

    .line 25
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->L(IZIZ)V

    .line 26
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->K()Z

    move-result v2

    goto/16 :goto_2

    .line 27
    :cond_7
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-nez v0, :cond_a

    .line 28
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    .line 29
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->K()Z

    move-result v2

    goto/16 :goto_2

    .line 30
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 31
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 33
    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->M:F

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 34
    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_a

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 35
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    .line 36
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->J(Z)V

    .line 37
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->N:F

    sub-float/2addr v3, v7

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-lez v3, :cond_9

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    int-to-float v3, v3

    add-float/2addr v7, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    int-to-float v3, v3

    sub-float/2addr v7, v3

    :goto_0
    iput v7, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 38
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->M:F

    .line 39
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 40
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 42
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    :cond_a
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v0, :cond_e

    .line 44
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 45
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 46
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->C(F)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    or-int/2addr v2, p1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MOVE, catch IllegalArgumentException, mActivePointerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev.findPointerIndex() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb/n/h/c;->a(Landroid/view/MotionEvent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    throw v0

    .line 52
    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Z

    if-eqz v0, :cond_e

    .line 53
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->Q:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 54
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->S:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 55
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 56
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    .line 57
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    .line 58
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->M()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 59
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->t()Landroidx/viewpager/widget/ViewPager$c;

    move-result-object v4

    .line 60
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 61
    iget v2, v4, Landroidx/viewpager/widget/ViewPager$c;->b:I

    .line 62
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->N()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 63
    iget v6, v4, Landroidx/viewpager/widget/ViewPager$c;->e:F

    sub-float/2addr v6, v3

    iget v3, v4, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v3, v5

    div-float/2addr v6, v3

    goto :goto_1

    .line 64
    :cond_c
    iget v6, v4, Landroidx/viewpager/widget/ViewPager$c;->e:F

    sub-float/2addr v3, v6

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$c;->d:F

    add-float/2addr v4, v5

    div-float v6, v3, v4

    .line 65
    :goto_1
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 66
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 67
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->N:F

    sub-float/2addr p1, v3

    float-to-int p1, p1

    .line 68
    invoke-direct {p0, v2, v6, v0, p1}, Landroidx/viewpager/widget/ViewPager;->i(IFII)I

    move-result p1

    .line 69
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->Q(IZZI)V

    .line 70
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->K()Z

    move-result v2

    goto :goto_2

    .line 71
    :cond_d
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 72
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    .line 73
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->D()V

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->N:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->L:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->O:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->M:F

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    :cond_e
    :goto_2
    if-eqz v2, :cond_f

    .line 77
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    :cond_f
    return v1

    :cond_10
    :goto_3
    return v2
.end method

.method public p(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    move-result p1

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->A()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 9
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    move-result p1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->z()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 12
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->d(I)Z

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method r(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;

    move-result-object p1

    return-object p1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method s(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$c;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$c;

    .line 3
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/a;->h(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setAdapter(Landroidx/viewpager/widget/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->m(Landroid/database/DataSetObserver;)V

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->n(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 4
    :goto_0
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 5
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$c;

    .line 6
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget v5, v3, Landroidx/viewpager/widget/ViewPager$c;->b:I

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager$c;->a:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroidx/viewpager/widget/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/a;->b(Landroid/view/ViewGroup;)V

    .line 8
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->G()V

    .line 10
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    .line 11
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    .line 13
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    .line 14
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->b:I

    if-eqz p1, :cond_5

    .line 15
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroidx/viewpager/widget/ViewPager$h;

    if-nez v3, :cond_2

    .line 16
    new-instance v3, Landroidx/viewpager/widget/ViewPager$h;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/ViewPager$h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v3, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroidx/viewpager/widget/ViewPager$h;

    .line 17
    :cond_2
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->m:Landroidx/viewpager/widget/ViewPager$h;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/a;->m(Landroid/database/DataSetObserver;)V

    .line 18
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    .line 19
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    const/4 v4, 0x1

    .line 20
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    .line 21
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    invoke-virtual {v5}, Landroidx/viewpager/widget/a;->c()I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->b:I

    .line 22
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    if-ltz v5, :cond_3

    .line 23
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroidx/viewpager/widget/a;

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroidx/viewpager/widget/a;->j(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 24
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    invoke-virtual {p0, v3, v2, v4}, Landroidx/viewpager/widget/ViewPager;->P(IZZ)V

    const/4 v3, -0x1

    .line 25
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->h:I

    .line 26
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->i:Landroid/os/Parcelable;

    .line 27
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->j:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 28
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->D()V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 30
    :cond_5
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 31
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_6

    .line 32
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->h0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$e;

    invoke-interface {v3, p0, v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->v:Z

    .line 2
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->b0:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->P(IZZ)V

    return-void
.end method

.method public setDragInGutterEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->C:Z

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->w:I

    .line 4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->D()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->f0:Landroidx/viewpager/widget/ViewPager$f;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    .line 2
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->n:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 4
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->F(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->n0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->n0:I

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->i0:Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->n(Z)V

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->l(I)V

    return-void
.end method

.method u(I)Landroidx/viewpager/widget/ViewPager$c;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$c;

    .line 3
    iget v2, v1, Landroidx/viewpager/widget/ViewPager$c;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Landroid/graphics/drawable/Drawable;

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

.method protected x(IFI)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_5

    .line 7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$d;

    .line 9
    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    iget v9, v9, Landroidx/viewpager/widget/ViewPager$d;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    sub-int v9, v5, v4

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 15
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 17
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->j(IFI)V

    .line 18
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->i0:Landroidx/viewpager/widget/ViewPager$g;

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$d;

    .line 23
    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$d;->a:Z

    if-eqz v0, :cond_6

    goto :goto_5

    .line 24
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 25
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->i0:Landroidx/viewpager/widget/ViewPager$g;

    invoke-interface {v3, p3, v0}, Landroidx/viewpager/widget/ViewPager$g;->a(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 26
    :cond_7
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->c0:Z

    return-void
.end method

.method z()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->g:I

    if-lez v0, :cond_0

    .line 2
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->O(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
