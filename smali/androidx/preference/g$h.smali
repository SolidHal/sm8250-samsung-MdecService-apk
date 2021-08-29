.class Landroidx/preference/g$h;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$r;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Landroidx/preference/Preference;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/preference/g$h;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 3
    iput-object p2, p0, Landroidx/preference/g$h;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object p3, p0, Landroidx/preference/g$h;->c:Landroidx/preference/Preference;

    .line 5
    iput-object p4, p0, Landroidx/preference/g$h;->d:Ljava/lang/String;

    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/g$h;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$r;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2
    iget-object v0, p0, Landroidx/preference/g$h;->c:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/preference/g$h;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    check-cast v1, Landroidx/preference/PreferenceGroup$c;

    .line 4
    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$c;->e(Landroidx/preference/Preference;)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/preference/g$h;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    check-cast v0, Landroidx/preference/PreferenceGroup$c;

    iget-object v1, p0, Landroidx/preference/g$h;->d:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$c;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/preference/g$h;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g$h;->g()V

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g$h;->g()V

    return-void
.end method

.method public c(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g$h;->g()V

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g$h;->g()V

    return-void
.end method

.method public e(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g$h;->g()V

    return-void
.end method

.method public f(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g$h;->g()V

    return-void
.end method
