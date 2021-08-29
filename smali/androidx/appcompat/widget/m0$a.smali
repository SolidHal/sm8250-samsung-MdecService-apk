.class Landroidx/appcompat/widget/m0$a;
.super Ljava/lang/Object;
.source "SeslAbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/m0;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/m0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m0$a;->a:Landroidx/appcompat/widget/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0$a;->a:Landroidx/appcompat/widget/m0;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/m0;->K(Landroidx/appcompat/widget/m0;I)I

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/m0$a;->a:Landroidx/appcompat/widget/m0;

    invoke-static {p1}, Landroidx/appcompat/widget/m0;->J(Landroidx/appcompat/widget/m0;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/m0;->v(I)V

    return-void
.end method
