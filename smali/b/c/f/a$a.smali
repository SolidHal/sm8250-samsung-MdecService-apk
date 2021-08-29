.class Lb/c/f/a$a;
.super Ljava/lang/Object;
.source "CardView.java"

# interfaces
.implements Lb/c/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lb/c/f/a;


# direct methods
.method constructor <init>(Lb/c/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    return-object v0
.end method

.method public b(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    iget v1, v0, Lb/c/f/a;->mUserSetMinWidth:I

    if-le p1, v1, :cond_0

    .line 2
    invoke-static {v0, p1}, Lb/c/f/a;->access$101(Lb/c/f/a;I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    iget v0, p1, Lb/c/f/a;->mUserSetMinHeight:I

    if-le p2, v0, :cond_1

    .line 4
    invoke-static {p1, p2}, Lb/c/f/a;->access$201(Lb/c/f/a;I)V

    :cond_1
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb/c/f/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    invoke-virtual {v0}, Lb/c/f/a;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    invoke-virtual {v0}, Lb/c/f/a;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/f/a$a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setShadowPadding(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    iget-object v0, v0, Lb/c/f/a;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object v0, p0, Lb/c/f/a$a;->b:Lb/c/f/a;

    iget-object v1, v0, Lb/c/f/a;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-static {v0, p1, p2, p3, p4}, Lb/c/f/a;->access$001(Lb/c/f/a;IIII)V

    return-void
.end method
