.class Lc/a/b/f$b;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final b:Lc/a/b/n;

.field private final c:Lc/a/b/p;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lc/a/b/f;Lc/a/b/n;Lc/a/b/p;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/a/b/f$b;->b:Lc/a/b/n;

    .line 3
    iput-object p3, p0, Lc/a/b/f$b;->c:Lc/a/b/p;

    .line 4
    iput-object p4, p0, Lc/a/b/f$b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/b/f$b;->b:Lc/a/b/n;

    invoke-virtual {v0}, Lc/a/b/n;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/b/f$b;->b:Lc/a/b/n;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lc/a/b/n;->finish(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/b/f$b;->c:Lc/a/b/p;

    invoke-virtual {v0}, Lc/a/b/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/a/b/f$b;->b:Lc/a/b/n;

    iget-object v1, p0, Lc/a/b/f$b;->c:Lc/a/b/p;

    iget-object v1, v1, Lc/a/b/p;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/a/b/n;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lc/a/b/f$b;->b:Lc/a/b/n;

    iget-object v1, p0, Lc/a/b/f$b;->c:Lc/a/b/p;

    iget-object v1, v1, Lc/a/b/p;->c:Lc/a/b/u;

    invoke-virtual {v0, v1}, Lc/a/b/n;->deliverError(Lc/a/b/u;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lc/a/b/f$b;->c:Lc/a/b/p;

    iget-boolean v0, v0, Lc/a/b/p;->d:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lc/a/b/f$b;->b:Lc/a/b/n;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lc/a/b/n;->addMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lc/a/b/f$b;->b:Lc/a/b/n;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lc/a/b/n;->finish(Ljava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lc/a/b/f$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
