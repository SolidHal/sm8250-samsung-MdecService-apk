.class public Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkTouchMovementMethod.java"


# static fields
.field private static sInstance:Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;


# instance fields
.field private mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->sInstance:Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->sInstance:Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->sInstance:Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;

    return-object v0
.end method

.method private getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr p3, v1

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 5
    const-class p3, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    .line 6
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    aget-object p1, p3, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1, v1}, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    .line 5
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 6
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    move-result-object p1

    .line 9
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    if-eqz p3, :cond_3

    if-eq p1, p3, :cond_3

    .line 10
    invoke-virtual {p3, v3}, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->setSelected(Z)V

    .line 11
    iput-object v4, p0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    .line 12
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->setSelected(Z)V

    .line 15
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 16
    :cond_2
    iput-object v4, p0, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->mPressedSpan:Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    .line 17
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_3
    :goto_0
    return v1
.end method
