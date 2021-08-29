.class public Lc/c/a/a;
.super Ljava/lang/Object;
.source "OkSse.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lf/w$b;

    invoke-direct {v0}, Lf/w$b;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lf/w$b;->e(JLjava/util/concurrent/TimeUnit;)Lf/w$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/w$b;->f(Z)Lf/w$b;

    invoke-virtual {v0}, Lf/w$b;->c()Lf/w;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/c/a/a;-><init>(Lf/w;)V

    return-void
.end method

.method public constructor <init>(Lf/w;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
