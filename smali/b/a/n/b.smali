.class public Lb/a/n/b;
.super Ljava/lang/Object;
.source "SeslRoundedCorner.java"


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:Landroid/graphics/drawable/Drawable;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/drawable/Drawable;

.field h:I

.field i:I

.field j:I

.field k:Landroid/content/Context;

.field l:Landroid/content/res/Resources;

.field m:Landroid/graphics/Rect;

.field n:I

.field o:I

.field p:Landroid/graphics/drawable/Drawable;

.field q:Landroid/graphics/drawable/Drawable;

.field r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lb/a/n/b;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb/a/n/b;->a:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lb/a/n/b;->b:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lb/a/n/b;->c:I

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    .line 7
    iput-object p1, p0, Lb/a/n/b;->k:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    .line 9
    iput-boolean p2, p0, Lb/a/n/b;->a:Z

    .line 10
    invoke-direct {p0}, Lb/a/n/b;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lb/a/n/b;->a:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lb/a/n/b;->b:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lb/a/n/b;->c:I

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    .line 16
    iput-object p1, p0, Lb/a/n/b;->k:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    .line 18
    iput-boolean p2, p0, Lb/a/n/b;->a:Z

    .line 19
    iput-boolean p3, p0, Lb/a/n/b;->b:Z

    .line 20
    invoke-direct {p0}, Lb/a/n/b;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    const/16 v0, 0x1a

    int-to-float v0, v0

    .line 1
    iget-object v1, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lb/a/n/b;->c:I

    .line 2
    iget-object v0, p0, Lb/a/n/b;->k:Landroid/content/Context;

    invoke-static {v0}, Lb/a/n/a;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lb/a/n/b;->a:Z

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRoundedCorner, rounded corner with stroke = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/a/n/b;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dark theme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mutate "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lb/a/n/b;->b:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslRoundedCorner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-boolean v0, p0, Lb/a/n/b;->a:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/c;->sesl_round_and_bgcolor_light:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lb/a/n/b;->i:I

    iput v0, p0, Lb/a/n/b;->h:I

    .line 8
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_top_left_round_stroke:I

    iget-object v2, p0, Lb/a/n/b;->k:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Landroidx/core/content/d/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    .line 11
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_top_right_round_stroke:I

    iget-object v2, p0, Lb/a/n/b;->k:Landroid/content/Context;

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Landroidx/core/content/d/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_bottom_left_round_stroke:I

    iget-object v2, p0, Lb/a/n/b;->k:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 16
    invoke-static {v0, v1, v2}, Landroidx/core/content/d/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    .line 17
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_bottom_right_round_stroke:I

    iget-object v2, p0, Lb/a/n/b;->k:Landroid/content/Context;

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Landroidx/core/content/d/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 20
    :cond_1
    iget-boolean v0, p0, Lb/a/n/b;->b:Z

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/c;->sesl_round_and_bgcolor_dark:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lb/a/n/b;->i:I

    iput v0, p0, Lb/a/n/b;->h:I

    .line 23
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_top_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    .line 24
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_top_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    .line 25
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_bottom_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    .line 26
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_bottom_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/c;->sesl_round_and_bgcolor_dark:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lb/a/n/b;->i:I

    iput v0, p0, Lb/a/n/b;->h:I

    .line 29
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_top_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    .line 30
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_top_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    .line 31
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_bottom_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    .line 32
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_bottom_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    .line 33
    :goto_0
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/e;->sesl_round_stroke:I

    iget-object v2, p0, Lb/a/n/b;->k:Landroid/content/Context;

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 35
    invoke-static {v0, v1, v2}, Landroidx/core/content/d/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lb/a/n/b;->l:Landroid/content/res/Resources;

    sget v1, Lb/a/d;->sesl_round_stroke_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lb/a/n/b;->r:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 2
    iget v0, p0, Lb/a/n/b;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lb/a/n/b;->a:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lb/a/n/b;->r:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v0, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lb/a/n/b;->c:I

    add-int v4, v2, v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v0, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_1
    iget v0, p0, Lb/a/n/b;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lb/a/n/b;->c:I

    sub-int v4, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v0, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_2
    iget v0, p0, Lb/a/n/b;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 12
    iget-boolean v0, p0, Lb/a/n/b;->a:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lb/a/n/b;->r:I

    sub-int v4, v3, v4

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    iget-object v0, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lb/a/n/b;->c:I

    sub-int v4, v1, v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object v0, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    :cond_4
    iget v0, p0, Lb/a/n/b;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lb/a/n/b;->c:I

    sub-int v4, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object v0, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lb/a/n/b;->n:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lb/a/n/b;->o:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lb/a/n/b;->n:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lb/a/n/b;->o:I

    .line 6
    :goto_0
    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, p0, Lb/a/n/b;->n:I

    iget v2, p0, Lb/a/n/b;->o:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lb/a/n/b;->o:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lb/a/n/b;->a:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lb/a/n/b;->r:I

    add-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object p1, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lb/a/n/b;->c:I

    add-int v3, v1, v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object p1, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :cond_2
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lb/a/n/b;->c:I

    sub-int v3, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object p1, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    :cond_3
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    .line 17
    iget-boolean p1, p0, Lb/a/n/b;->a:Z

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lb/a/n/b;->r:I

    sub-int v3, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object p1, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    :cond_4
    iget-object p1, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lb/a/n/b;->c:I

    sub-int v3, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object p1, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    :cond_5
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    .line 23
    iget-object p1, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lb/a/n/b;->c:I

    sub-int v3, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object p1, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/n/b;->c:I

    return v0
.end method

.method public e(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/a/n/b;->a:Z

    const-string v1, "SeslRoundedCorner"

    if-eqz v0, :cond_0

    const-string p1, "can not change round color on stroke rounded corners"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_a

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_9

    .line 3
    iget v0, p0, Lb/a/n/b;->h:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lb/a/n/b;->i:I

    if-eq p2, v0, :cond_2

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/n/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/n/b;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_2
    iget-object v0, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 6
    :cond_3
    invoke-direct {p0}, Lb/a/n/b;->d()V

    .line 7
    :cond_4
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    .line 8
    iput p2, p0, Lb/a/n/b;->h:I

    .line 9
    iget-object v1, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_6

    .line 10
    iget-object v1, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_7

    .line 11
    iput p2, p0, Lb/a/n/b;->i:I

    .line 12
    iget-object p2, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_8

    .line 13
    iget-object p1, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8
    return-void

    .line 14
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is no rounded corner on = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(I)V
    .locals 3

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2

    .line 1
    iput p1, p0, Lb/a/n/b;->j:I

    .line 2
    iget-object p1, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lb/a/n/b;->d()V

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
