.class public Lb/q/b;
.super Lb/q/r;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/q/r;-><init>()V

    .line 2
    invoke-direct {p0}, Lb/q/b;->u()V

    return-void
.end method

.method private u()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/q/r;->q(I)Lb/q/r;

    .line 2
    new-instance v1, Lb/q/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lb/q/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/q/r;->f(Lb/q/n;)Lb/q/r;

    new-instance v1, Lb/q/c;

    invoke-direct {v1}, Lb/q/c;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Lb/q/r;->f(Lb/q/n;)Lb/q/r;

    new-instance v1, Lb/q/d;

    invoke-direct {v1, v0}, Lb/q/d;-><init>(I)V

    .line 4
    invoke-virtual {p0, v1}, Lb/q/r;->f(Lb/q/n;)Lb/q/r;

    return-void
.end method
