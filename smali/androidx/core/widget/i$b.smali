.class Landroidx/core/widget/i$b;
.super Ljava/lang/Object;
.source "SeslEdgeEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/core/widget/i;


# direct methods
.method constructor <init>(Landroidx/core/widget/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/widget/i$b;->b:Landroidx/core/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/widget/i$b;->b:Landroidx/core/widget/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/widget/i;->a(Landroidx/core/widget/i;Z)Z

    .line 2
    iget-object v0, p0, Landroidx/core/widget/i$b;->b:Landroidx/core/widget/i;

    invoke-static {v0}, Landroidx/core/widget/i;->b(Landroidx/core/widget/i;)F

    move-result v2

    iget-object v3, p0, Landroidx/core/widget/i$b;->b:Landroidx/core/widget/i;

    invoke-static {v3}, Landroidx/core/widget/i;->c(Landroidx/core/widget/i;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/core/widget/i;->onPull(FF)V

    .line 3
    iget-object v0, p0, Landroidx/core/widget/i$b;->b:Landroidx/core/widget/i;

    invoke-static {v0}, Landroidx/core/widget/i;->d(Landroidx/core/widget/i;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
