.class public Lc/a/b/f;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lc/a/b/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/f$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/b/f$a;

    invoke-direct {v0, p0, p1}, Lc/a/b/f$a;-><init>(Lc/a/b/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lc/a/b/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/n;Lc/a/b/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/n<",
            "*>;",
            "Lc/a/b/u;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 1
    invoke-virtual {p1, v0}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lc/a/b/p;->a(Lc/a/b/u;)Lc/a/b/p;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lc/a/b/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/a/b/f$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lc/a/b/f$b;-><init>(Lc/a/b/f;Lc/a/b/n;Lc/a/b/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lc/a/b/n;Lc/a/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/n<",
            "*>;",
            "Lc/a/b/p<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lc/a/b/f;->c(Lc/a/b/n;Lc/a/b/p;Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lc/a/b/n;Lc/a/b/p;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/n<",
            "*>;",
            "Lc/a/b/p<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/a/b/n;->markDelivered()V

    const-string v0, "post-response"

    .line 2
    invoke-virtual {p1, v0}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/a/b/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/a/b/f$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lc/a/b/f$b;-><init>(Lc/a/b/f;Lc/a/b/n;Lc/a/b/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
