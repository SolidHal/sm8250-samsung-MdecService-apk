.class Landroidx/recyclerview/widget/p$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslRecyclerViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/p;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/p$b;->a:Landroidx/recyclerview/widget/p;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/p$b;->a:Landroidx/recyclerview/widget/p;

    invoke-static {p1}, Landroidx/recyclerview/widget/p;->b(Landroidx/recyclerview/widget/p;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/p;->c(Landroidx/recyclerview/widget/p;Z)Z

    return-void
.end method
