.class Landroidx/recyclerview/widget/RecyclerView$j;
.super Landroid/os/Handler;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_14

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    if-nez v0, :cond_1

    const-string p1, "SeslRecyclerView"

    const-string v0, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->access$002(Landroidx/recyclerview/widget/RecyclerView;J)J

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->access$102(Landroidx/recyclerview/widget/RecyclerView;J)J

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$500(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    goto/16 :goto_14

    .line 7
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$600(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$700(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    goto/16 :goto_14

    .line 8
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$800(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$900(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$e0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$1002(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$900(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$e0;

    move-result-object p1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$e0;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 12
    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$802(Landroidx/recyclerview/widget/RecyclerView;Z)Z

    .line 13
    :cond_5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$z;->l()Z

    move-result v1

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$z;->k()Z

    move-result v2

    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$z;->Y()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v0, :cond_6

    move v3, v0

    goto :goto_0

    :cond_6
    move v3, v4

    .line 17
    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->access$1100(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v5

    add-int/2addr v5, p1

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    move v5, v0

    goto :goto_1

    :cond_7
    move v5, v4

    :goto_1
    if-nez v5, :cond_c

    if-lez p1, :cond_c

    .line 18
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v2, :cond_9

    .line 19
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    if-eqz v3, :cond_8

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v6, v5, :cond_a

    goto :goto_2

    :cond_8
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 20
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v8

    if-gt v6, v5, :cond_b

    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 21
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_a

    goto :goto_2

    :cond_9
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 22
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v8

    if-gt v6, v5, :cond_b

    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 23
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    goto :goto_3

    :cond_b
    :goto_2
    move v5, v0

    .line 24
    :cond_c
    :goto_3
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->access$1100(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v6

    if-lez v6, :cond_d

    move v6, v0

    goto :goto_4

    :cond_d
    move v6, v4

    :goto_4
    if-nez v6, :cond_12

    if-lez p1, :cond_12

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v2, :cond_f

    if-eqz v3, :cond_e

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v8

    if-gt v6, p1, :cond_10

    iget-object p1, v7, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 27
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le p1, v6, :cond_11

    goto :goto_5

    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, p1, :cond_11

    goto :goto_5

    :cond_f
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-ge v6, p1, :cond_11

    :cond_10
    :goto_5
    move v6, v0

    goto :goto_6

    :cond_11
    move v6, v4

    .line 28
    :cond_12
    :goto_6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1300(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result v7

    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->access$1400(Landroidx/recyclerview/widget/RecyclerView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 30
    invoke-static {v0, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->access$1202(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    cmp-long p1, v9, v11

    const-wide/16 v9, 0x4

    if-lez p1, :cond_13

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long p1, v11, v9

    if-gez p1, :cond_13

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v7

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v7, v9

    invoke-static {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->access$1202(Landroidx/recyclerview/widget/RecyclerView;I)I

    goto :goto_7

    .line 33
    :cond_13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long p1, v11, v9

    const-wide/16 v9, 0x5

    if-ltz p1, :cond_14

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long p1, v11, v9

    if-gez p1, :cond_14

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v7

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v7, v9

    invoke-static {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->access$1202(Landroidx/recyclerview/widget/RecyclerView;I)I

    goto :goto_7

    .line 35
    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;)J

    move-result-wide v11

    cmp-long p1, v11, v9

    if-ltz p1, :cond_15

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v7

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v9, v11

    double-to-int v9, v9

    add-int/2addr v7, v9

    invoke-static {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->access$1202(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 37
    :cond_15
    :goto_7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    const/4 v7, 0x2

    if-ne p1, v7, :cond_19

    if-eqz v2, :cond_16

    if-eqz v3, :cond_16

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    mul-int/2addr p1, v0

    goto :goto_8

    .line 39
    :cond_16
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    .line 40
    :goto_8
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1600(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_17

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1700(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_18

    :cond_17
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1800(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v9

    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->access$1500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    if-eq v9, v10, :cond_1d

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1900(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v9

    if-ne v9, v0, :cond_1d

    .line 41
    :cond_18
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1700(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$1602(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 42
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$2100(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$2002(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 43
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$2300(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$2202(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 44
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$1802(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 45
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$1902(Landroidx/recyclerview/widget/RecyclerView;Z)Z

    goto :goto_a

    :cond_19
    if-eqz v2, :cond_1a

    if-eqz v3, :cond_1a

    .line 46
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    goto :goto_9

    .line 47
    :cond_1a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$1200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    mul-int/2addr p1, v0

    .line 48
    :goto_9
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1600(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1b

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$2400(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1c

    :cond_1b
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1800(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v9

    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->access$1500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    if-eq v9, v10, :cond_1d

    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1900(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v9

    if-ne v9, v0, :cond_1d

    .line 49
    :cond_1c
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$2400(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$1602(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 50
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$2500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$2002(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 51
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$2600(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$2202(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 52
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$1500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$1802(Landroidx/recyclerview/widget/RecyclerView;I)I

    .line 53
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$1902(Landroidx/recyclerview/widget/RecyclerView;Z)Z

    .line 54
    :cond_1d
    :goto_a
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1e

    goto/16 :goto_14

    :cond_1e
    if-gez p1, :cond_1f

    if-nez v6, :cond_20

    :cond_1f
    if-lez p1, :cond_2a

    if-eqz v5, :cond_2a

    .line 55
    :cond_20
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_21

    move v7, v0

    :cond_21
    invoke-virtual {v5, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 56
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_23

    if-eqz v3, :cond_22

    neg-int v5, p1

    move v9, v5

    goto :goto_b

    :cond_22
    move v9, p1

    goto :goto_b

    :cond_23
    move v9, v4

    :goto_b
    if-eqz v1, :cond_24

    move v10, p1

    goto :goto_c

    :cond_24
    move v10, v4

    :goto_c
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    if-nez v5, :cond_28

    .line 57
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_26

    if-eqz v3, :cond_25

    neg-int v2, p1

    goto :goto_d

    :cond_25
    move v2, p1

    goto :goto_d

    :cond_26
    move v2, v4

    :goto_d
    if-eqz v1, :cond_27

    goto :goto_e

    :cond_27
    move p1, v4

    :goto_e
    const/4 v1, 0x0

    invoke-virtual {v5, v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 58
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 59
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$2700(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 60
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$2800(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$2900(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    invoke-static {p1, v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->access$3000(Landroidx/recyclerview/widget/RecyclerView;IIZ)V

    goto :goto_f

    .line 61
    :cond_28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$3100(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 62
    :cond_29
    :goto_f
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$3300(Landroidx/recyclerview/widget/RecyclerView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->access$3200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14

    .line 63
    :cond_2a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p1

    if-eqz p1, :cond_2c

    if-ne p1, v0, :cond_2b

    .line 64
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$3400(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_10

    :cond_2b
    move p1, v4

    goto :goto_11

    :cond_2c
    :goto_10
    move p1, v0

    :goto_11
    if-eqz p1, :cond_32

    .line 66
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3500(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_32

    if-eqz v2, :cond_2d

    .line 67
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 68
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    goto :goto_12

    .line 69
    :cond_2d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 70
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 71
    :goto_12
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$1500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    const v3, 0x3ecccccd    # 0.4f

    if-ne v1, v7, :cond_2f

    if-eqz v2, :cond_2e

    .line 72
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3600(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1, v3, v8, v4}, Landroidx/core/widget/i;->g(FFI)V

    .line 73
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3700(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    if-nez v1, :cond_31

    .line 74
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3700(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->onRelease()V

    goto :goto_13

    .line 75
    :cond_2e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1, v3, v8, v4}, Landroidx/core/widget/i;->g(FFI)V

    .line 76
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3900(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    if-nez v1, :cond_31

    .line 77
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3900(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->onRelease()V

    goto :goto_13

    .line 78
    :cond_2f
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$1500(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    if-ne v1, v0, :cond_31

    if-eqz v2, :cond_30

    .line 79
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3700(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1, v3, v8, v4}, Landroidx/core/widget/i;->g(FFI)V

    .line 80
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3600(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    if-nez v1, :cond_31

    .line 81
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3600(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->onRelease()V

    goto :goto_13

    .line 82
    :cond_30
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3900(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1, v3, v8, v4}, Landroidx/core/widget/i;->g(FFI)V

    .line 83
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$4000(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 84
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$4100(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 85
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->isFinished()Z

    move-result v1

    if-nez v1, :cond_31

    .line 86
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$3800(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/i;->onRelease()V

    .line 87
    :cond_31
    :goto_13
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 88
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$3502(Landroidx/recyclerview/widget/RecyclerView;Z)Z

    .line 89
    :cond_32
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->access$4200(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    if-ne v1, v0, :cond_33

    .line 90
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_33
    if-nez p1, :cond_34

    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->access$3500(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 92
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$3502(Landroidx/recyclerview/widget/RecyclerView;Z)Z

    :cond_34
    :goto_14
    return-void
.end method
