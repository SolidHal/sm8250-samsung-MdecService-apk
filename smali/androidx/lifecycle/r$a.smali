.class Landroidx/lifecycle/r$a;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/lifecycle/r;


# direct methods
.method constructor <init>(Landroidx/lifecycle/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/r$a;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/r$a;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->f()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/r$a;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->g()V

    return-void
.end method
