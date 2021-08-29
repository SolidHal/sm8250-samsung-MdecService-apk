.class Landroidx/preference/g$d;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Z

.field final synthetic d:Landroidx/preference/g;


# direct methods
.method constructor <init>(Landroidx/preference/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/preference/g$d;->c:Z

    return-void
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$z;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X1()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    if-ge v0, p1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    return v2
.end method

.method private h(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/preference/l;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/preference/l;

    .line 3
    invoke-virtual {v0}, Landroidx/preference/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-boolean v0, p0, Landroidx/preference/g$d;->c:Z

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_3

    add-int/2addr p1, v3

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object p1

    .line 9
    instance-of p2, p1, Landroidx/preference/l;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/preference/l;

    .line 10
    invoke-virtual {p1}, Landroidx/preference/l;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method


# virtual methods
.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/preference/g$d;->c:Z

    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroidx/preference/g$d;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/preference/g$d;->b:I

    .line 3
    :goto_0
    iput-object p1, p0, Landroidx/preference/g$d;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p1, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    iget-object p1, p1, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/g$d;->b:I

    .line 2
    iget-object p1, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    iget-object p1, p1, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$y;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-ge v3, p3, :cond_7

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6
    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$r0;

    move-result-object v7

    .line 7
    instance-of v8, v7, Landroidx/preference/l;

    if-eqz v8, :cond_0

    .line 8
    check-cast v7, Landroidx/preference/l;

    goto :goto_1

    :cond_0
    move-object v7, v2

    :goto_1
    if-nez v3, :cond_1

    move-object v4, v7

    goto :goto_2

    :cond_1
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    move-object v5, v7

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 10
    iget-object v9, p0, Landroidx/preference/g$d;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    invoke-direct {p0, v6, p2}, Landroidx/preference/g$d;->h(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11
    iget-object v9, p0, Landroidx/preference/g$d;->a:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroidx/preference/g$d;->b:I

    add-int/2addr v10, v8

    invoke-virtual {v9, v1, v8, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v8, p0, Landroidx/preference/g$d;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :cond_3
    iget-object v8, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {v8}, Landroidx/preference/g;->access$000(Landroidx/preference/g;)I

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    iget-boolean v8, v7, Landroidx/preference/l;->e:Z

    if-nez v8, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {v7}, Landroidx/preference/l;->e()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 15
    iget-object v8, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {v8}, Landroidx/preference/g;->access$100(Landroidx/preference/g;)Lb/a/n/d;

    move-result-object v8

    iget v7, v7, Landroidx/preference/l;->d:I

    invoke-virtual {v8, v7}, Lb/a/n/b;->f(I)V

    .line 16
    iget-object v7, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {v7}, Landroidx/preference/g;->access$100(Landroidx/preference/g;)Lb/a/n/d;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Lb/a/n/d;->b(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 17
    :cond_5
    iget-object v8, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {v8}, Landroidx/preference/g;->access$200(Landroidx/preference/g;)Lb/a/n/b;

    move-result-object v8

    iget v7, v7, Landroidx/preference/l;->d:I

    invoke-virtual {v8, v7}, Lb/a/n/b;->f(I)V

    .line 18
    iget-object v7, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {v7}, Landroidx/preference/g;->access$200(Landroidx/preference/g;)Lb/a/n/b;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Lb/a/n/b;->b(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_7
    iget-object p3, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {p3}, Landroidx/preference/g;->access$000(Landroidx/preference/g;)I

    move-result p3

    if-eqz p3, :cond_a

    .line 20
    iget-object p3, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {p3}, Landroidx/preference/g;->access$000(Landroidx/preference/g;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_9

    if-eqz v4, :cond_9

    .line 21
    invoke-direct {p0, p2}, Landroidx/preference/g$d;->d(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v4}, Landroidx/preference/l;->e()Z

    move-result p2

    if-nez p2, :cond_9

    if-eqz v5, :cond_8

    if-eqz v5, :cond_9

    .line 22
    invoke-virtual {v5}, Landroidx/preference/l;->d()I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_9

    .line 23
    :cond_8
    iget-object p2, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {p2}, Landroidx/preference/g;->access$300(Landroidx/preference/g;)Lb/a/n/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/a/n/b;->a(Landroid/graphics/Canvas;)V

    return-void

    .line 24
    :cond_9
    iget-object p2, p0, Landroidx/preference/g$d;->d:Landroidx/preference/g;

    invoke-static {p2}, Landroidx/preference/g;->access$400(Landroidx/preference/g;)Lb/a/n/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/a/n/b;->a(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method
