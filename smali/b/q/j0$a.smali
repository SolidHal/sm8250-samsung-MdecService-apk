.class Lb/q/j0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/j0;->e(Landroid/view/ViewGroup;Lb/q/t;ILb/q/t;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/q/x;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lb/q/j0;Lb/q/x;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/q/j0$a;->a:Lb/q/x;

    iput-object p3, p0, Lb/q/j0$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/q/j0$a;->a:Lb/q/x;

    iget-object v0, p0, Lb/q/j0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/q/x;->c(Landroid/view/View;)V

    return-void
.end method
