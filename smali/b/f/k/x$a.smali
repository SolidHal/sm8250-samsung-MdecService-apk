.class Lb/f/k/x$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/k/x;->g(Landroid/view/View;Lb/f/k/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/f/k/y;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lb/f/k/x;Lb/f/k/y;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/f/k/x$a;->a:Lb/f/k/y;

    iput-object p3, p0, Lb/f/k/x$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/f/k/x$a;->a:Lb/f/k/y;

    iget-object v0, p0, Lb/f/k/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/f/k/y;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/f/k/x$a;->a:Lb/f/k/y;

    iget-object v0, p0, Lb/f/k/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/f/k/y;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/f/k/x$a;->a:Lb/f/k/y;

    iget-object v0, p0, Lb/f/k/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/f/k/y;->c(Landroid/view/View;)V

    return-void
.end method
