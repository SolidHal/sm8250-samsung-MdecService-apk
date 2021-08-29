.class public Lb/n/i/a;
.super Ljava/lang/Object;
.source "SeslAbsListViewReflector.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/widget/AbsListView;

    sput-object v0, Lb/n/i/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public static a(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 2
    sget-object v0, Lb/n/i/a;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "hidden_mEdgeGlowTop"

    invoke-static {v0, v4, v3}, Lb/n/a;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p0, v0, v2}, Lb/n/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lb/n/i/a;->a:Ljava/lang/Class;

    const-string v2, "mEdgeGlowTop"

    invoke-static {v0, v2}, Lb/n/a;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, v0}, Lb/n/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    .line 6
    :goto_0
    instance-of v0, p0, Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, Landroid/widget/EdgeEffect;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lb/n/i/a;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hidden_mEdgeGlowBottom"

    invoke-static {v0, v3, v2}, Lb/n/a;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 3
    invoke-static {p0, v0, v1}, Lb/n/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lb/n/i/a;->a:Ljava/lang/Class;

    const-string v1, "mEdgeGlowBottom"

    invoke-static {v0, v1}, Lb/n/a;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, v0, p1}, Lb/n/a;->k(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lb/n/i/a;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hidden_mEdgeGlowTop"

    invoke-static {v0, v3, v2}, Lb/n/a;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 3
    invoke-static {p0, v0, v1}, Lb/n/a;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lb/n/i/a;->a:Ljava/lang/Class;

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Lb/n/a;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, v0, p1}, Lb/n/a;->k(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
