.class Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Lb/f/k/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lb/f/k/b0;)Lb/f/k/b0;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWindowInsets(Lb/f/k/b0;)Lb/f/k/b0;

    move-result-object p1

    return-object p1
.end method
