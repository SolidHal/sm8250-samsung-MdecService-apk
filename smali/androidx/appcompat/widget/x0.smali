.class public Landroidx/appcompat/widget/x0;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/x0$b;,
        Landroidx/appcompat/widget/x0$c;,
        Landroidx/appcompat/widget/x0$d;
    }
.end annotation


# static fields
.field private static final a:Landroidx/appcompat/widget/x0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/x0$b;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/x0$b;-><init>(Landroidx/appcompat/widget/x0$a;)V

    sput-object v0, Landroidx/appcompat/widget/x0;->a:Landroidx/appcompat/widget/x0$d;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/x0$c;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/x0$c;-><init>(Landroidx/appcompat/widget/x0$a;)V

    sput-object v0, Landroidx/appcompat/widget/x0;->a:Landroidx/appcompat/widget/x0$d;

    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/x0;->a:Landroidx/appcompat/widget/x0$d;

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/x0$d;->a(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/x0;->a:Landroidx/appcompat/widget/x0$d;

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/x0$d;->d(Z)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/x0;->a:Landroidx/appcompat/widget/x0$d;

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/x0$d;->b(Z)V

    return-void
.end method

.method public static d(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/x0;->a:Landroidx/appcompat/widget/x0$d;

    invoke-interface {v0, p0, p1}, Landroidx/appcompat/widget/x0$d;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
