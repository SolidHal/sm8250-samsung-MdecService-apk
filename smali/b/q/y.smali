.class Lb/q/y;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# direct methods
.method static a(Landroid/view/ViewGroup;)Lb/q/x;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lb/q/w;

    invoke-direct {v0, p0}, Lb/q/w;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Lb/q/v;->g(Landroid/view/ViewGroup;)Lb/q/v;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lb/q/a0;->b(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lb/q/z;->b(Landroid/view/ViewGroup;Z)V

    :goto_0
    return-void
.end method
