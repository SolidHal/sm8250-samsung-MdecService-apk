.class Lb/c/f/d;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Lb/c/f/f;


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb/c/f/d;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private p(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lb/c/f/h;
    .locals 7

    .line 1
    new-instance v6, Lb/c/f/h;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lb/c/f/h;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private q(Lb/c/f/e;)Lb/c/f/h;
    .locals 0

    .line 1
    invoke-interface {p1}, Lb/c/f/e;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lb/c/f/h;

    return-object p1
.end method


# virtual methods
.method public a(Lb/c/f/e;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/f/h;->i()F

    move-result p1

    return p1
.end method

.method public b(Lb/c/f/e;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/f/h;->f()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public c(Lb/c/f/e;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lb/c/f/d;->p(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lb/c/f/h;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Lb/c/f/e;->d()Z

    move-result p3

    invoke-virtual {p2, p3}, Lb/c/f/h;->m(Z)V

    .line 3
    invoke-interface {p1, p2}, Lb/c/f/e;->c(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, p1}, Lb/c/f/d;->f(Lb/c/f/e;)V

    return-void
.end method

.method public d(Lb/c/f/e;F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/c/f/h;->p(F)V

    .line 2
    invoke-virtual {p0, p1}, Lb/c/f/d;->f(Lb/c/f/e;)V

    return-void
.end method

.method public e(Lb/c/f/e;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/f/h;->l()F

    move-result p1

    return p1
.end method

.method public f(Lb/c/f/e;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/c/f/h;->h(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0, p1}, Lb/c/f/d;->j(Lb/c/f/e;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 4
    invoke-virtual {p0, p1}, Lb/c/f/d;->i(Lb/c/f/e;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 5
    invoke-interface {p1, v1, v2}, Lb/c/f/e;->b(II)V

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Lb/c/f/e;->setShadowPadding(IIII)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    new-instance v0, Lb/c/f/d$a;

    invoke-direct {v0, p0}, Lb/c/f/d$a;-><init>(Lb/c/f/d;)V

    sput-object v0, Lb/c/f/h;->r:Lb/c/f/h$a;

    return-void
.end method

.method public h(Lb/c/f/e;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/f/h;->g()F

    move-result p1

    return p1
.end method

.method public i(Lb/c/f/e;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/f/h;->j()F

    move-result p1

    return p1
.end method

.method public j(Lb/c/f/e;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/c/f/h;->k()F

    move-result p1

    return p1
.end method

.method public k(Lb/c/f/e;)V
    .locals 0

    return-void
.end method

.method public l(Lb/c/f/e;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/c/f/h;->r(F)V

    return-void
.end method

.method public m(Lb/c/f/e;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object v0

    invoke-interface {p1}, Lb/c/f/e;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/c/f/h;->m(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lb/c/f/d;->f(Lb/c/f/e;)V

    return-void
.end method

.method public n(Lb/c/f/e;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/c/f/h;->o(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public o(Lb/c/f/e;F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lb/c/f/d;->q(Lb/c/f/e;)Lb/c/f/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/c/f/h;->q(F)V

    .line 2
    invoke-virtual {p0, p1}, Lb/c/f/d;->f(Lb/c/f/e;)V

    return-void
.end method
