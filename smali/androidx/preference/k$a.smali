.class Landroidx/preference/k$a;
.super Lb/f/k/a;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/k;


# direct methods
.method constructor <init>(Landroidx/preference/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/k$a;->a:Landroidx/preference/k;

    invoke-direct {p0}, Lb/f/k/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/f/k/c0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/k$a;->a:Landroidx/preference/k;

    iget-object v0, v0, Landroidx/preference/k;->b:Lb/f/k/a;

    invoke-virtual {v0, p1, p2}, Lb/f/k/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/f/k/c0/c;)V

    .line 2
    iget-object v0, p0, Landroidx/preference/k$a;->a:Landroidx/preference/k;

    iget-object v0, v0, Landroidx/preference/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 3
    iget-object v0, p0, Landroidx/preference/k$a;->a:Landroidx/preference/k;

    iget-object v0, v0, Landroidx/preference/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/preference/h;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    check-cast v0, Landroidx/preference/h;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Lb/f/k/c0/c;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/k$a;->a:Landroidx/preference/k;

    iget-object v0, v0, Landroidx/preference/k;->b:Lb/f/k/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/f/k/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
