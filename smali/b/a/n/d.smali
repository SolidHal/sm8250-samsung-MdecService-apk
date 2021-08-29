.class public Lb/a/n/d;
.super Lb/a/n/b;
.source "SeslSubheaderRoundedCorner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/n/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lb/a/n/b;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
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

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lb/a/n/b;->a:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lb/a/n/b;->r:I

    add-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object p1, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lb/a/n/b;->c:I

    add-int v4, v2, v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

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

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lb/a/n/b;->c:I

    sub-int v4, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

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
    iget-object p1, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lb/a/n/b;->r:I

    sub-int v3, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object p1, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    :cond_4
    iget-object p1, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

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

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v2

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object p1, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method public g(IIIILandroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lb/a/n/b;->a:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lb/a/n/b;->r:I

    add-int/2addr v0, p4

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p1, p0, Lb/a/n/b;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lb/a/n/b;->c:I

    add-int v1, p4, v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p4, p3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object p1, p0, Lb/a/n/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    :cond_1
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lb/a/n/b;->c:I

    sub-int v1, p4, v0

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p3

    invoke-virtual {p1, v1, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object p1, p0, Lb/a/n/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_2
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    .line 12
    iget-boolean p1, p0, Lb/a/n/b;->a:Z

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lb/a/n/b;->r:I

    sub-int v0, p4, v0

    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    iget-object p1, p0, Lb/a/n/b;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    :cond_3
    iget-object p1, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p4, p0, Lb/a/n/b;->c:I

    sub-int v0, p2, p4

    add-int/2addr p4, p3

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object p1, p0, Lb/a/n/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    :cond_4
    iget p1, p0, Lb/a/n/b;->j:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lb/a/n/b;->m:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget p4, p0, Lb/a/n/b;->c:I

    sub-int v0, p3, p4

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p4, p2, p4

    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object p1, p0, Lb/a/n/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method
