.class Landroidx/appcompat/widget/SwitchCompat$b;
.super Ljava/lang/Object;
.source "SwitchCompat.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SwitchCompat;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SwitchCompat;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat$b;->b:Landroidx/appcompat/widget/SwitchCompat;

    iput-boolean p2, p0, Landroidx/appcompat/widget/SwitchCompat$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat$b;->b:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, v0, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroidx/appcompat/widget/SwitchCompat$c;

    if-ne v1, p1, :cond_1

    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat$b;->a:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat$b;->b:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroidx/appcompat/widget/SwitchCompat$c;

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
