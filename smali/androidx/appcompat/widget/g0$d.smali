.class Landroidx/appcompat/widget/g0$d;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/g0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/g0$d;->b:Landroidx/appcompat/widget/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/g0$d;->b:Landroidx/appcompat/widget/g0;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/widget/g0;->t()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/g0$d;->b:Landroidx/appcompat/widget/g0;

    iget-object p1, p1, Landroidx/appcompat/widget/g0;->F:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/g0$d;->b:Landroidx/appcompat/widget/g0;

    iget-object p2, p1, Landroidx/appcompat/widget/g0;->B:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/appcompat/widget/g0;->x:Landroidx/appcompat/widget/g0$f;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/g0$d;->b:Landroidx/appcompat/widget/g0;

    iget-object p1, p1, Landroidx/appcompat/widget/g0;->x:Landroidx/appcompat/widget/g0$f;

    invoke-virtual {p1}, Landroidx/appcompat/widget/g0$f;->run()V

    :cond_0
    return-void
.end method
