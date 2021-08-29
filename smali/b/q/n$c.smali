.class Lb/q/n$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/n;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/q/n;


# direct methods
.method constructor <init>(Lb/q/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/q/n$c;->a:Lb/q/n;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/q/n$c;->a:Lb/q/n;

    invoke-virtual {v0}, Lb/q/n;->end()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
