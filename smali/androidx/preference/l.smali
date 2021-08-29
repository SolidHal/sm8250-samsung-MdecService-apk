.class public Landroidx/preference/l;
.super Landroidx/recyclerview/widget/RecyclerView$r0;
.source "PreferenceViewHolder.java"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field d:I

.field e:Z

.field f:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/preference/l;->e:Z

    .line 4
    iput-boolean v1, p0, Landroidx/preference/l;->f:Z

    const v1, 0x1020016

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    sget v1, Landroidx/preference/p;->icon_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    const v1, 0x102003e

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/preference/l;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/l;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/l;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/l;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/l;->f:Z

    return v0
.end method

.method f(ZIZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/preference/l;->e:Z

    .line 2
    iput p2, p0, Landroidx/preference/l;->d:I

    .line 3
    iput-boolean p3, p0, Landroidx/preference/l;->f:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/preference/l;->b:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/preference/l;->c:Z

    return-void
.end method
