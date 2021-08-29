.class Lb/q/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/c;->createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/q/c$k;

.field private mViewBounds:Lb/q/c$k;


# direct methods
.method constructor <init>(Lb/q/c;Lb/q/c$k;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lb/q/c$h;->a:Lb/q/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iget-object p1, p0, Lb/q/c$h;->a:Lb/q/c$k;

    iput-object p1, p0, Lb/q/c$h;->mViewBounds:Lb/q/c$k;

    return-void
.end method
