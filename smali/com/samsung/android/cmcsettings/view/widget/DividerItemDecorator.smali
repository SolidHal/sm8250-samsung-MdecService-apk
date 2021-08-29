.class public Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$y;
.source "DividerItemDecorator.java"


# instance fields
.field private mAttr:Landroid/content/res/TypedArray;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    const v1, 0x10103be

    aput v1, p2, v0

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o0;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    const/16 v2, 0xa

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-gt v3, v1, :cond_0

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 8
    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 9
    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
