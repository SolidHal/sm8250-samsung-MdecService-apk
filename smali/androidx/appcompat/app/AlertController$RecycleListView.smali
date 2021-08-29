.class public Landroidx/appcompat/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Lb/a/j;->RecycleListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lb/a/j;->RecycleListView_paddingBottomNoButtons:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->c:I

    .line 4
    sget p2, Lb/a/j;->RecycleListView_paddingTopNoTitle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p1, :cond_3

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v1

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p2

    goto :goto_1

    :cond_2
    iget p2, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->c:I

    .line 5
    :goto_1
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lb/n/i/a;->a(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/core/widget/i;

    invoke-direct {v1, v0}, Landroidx/core/widget/i;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Landroidx/core/widget/i;

    invoke-direct {v2, v0}, Landroidx/core/widget/i;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, p0}, Landroidx/core/widget/i;->h(Landroid/view/View;)V

    .line 6
    invoke-virtual {v2, p0}, Landroidx/core/widget/i;->h(Landroid/view/View;)V

    .line 7
    invoke-static {p0, v1}, Lb/n/i/a;->c(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    .line 8
    invoke-static {p0, v2}, Lb/n/i/a;->b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lb/n/i/a;->c(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    .line 10
    invoke-static {p0, v0}, Lb/n/i/a;->b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    .line 11
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method
