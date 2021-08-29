.class public final Landroidx/recyclerview/widget/b;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Landroidx/recyclerview/widget/k;


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$r;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyItemMoved(II)V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public d(IILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
