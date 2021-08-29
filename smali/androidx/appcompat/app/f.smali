.class public abstract Landroidx/appcompat/app/f;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field private static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/app/Activity;Landroidx/appcompat/app/e;)Landroidx/appcompat/app/f;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/e;)V

    return-object v0
.end method

.method public static d(Landroid/app/Dialog;Landroidx/appcompat/app/e;)Landroidx/appcompat/app/f;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/e;)V

    return-object v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/app/f;->b:I

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract b()Z
.end method

.method public abstract e(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract g()Landroidx/appcompat/app/b;
.end method

.method public abstract h()Landroid/view/MenuInflater;
.end method

.method public abstract i()Landroidx/appcompat/app/a;
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract l(Landroid/content/res/Configuration;)V
.end method

.method public abstract m(Landroid/os/Bundle;)V
.end method

.method public abstract n()V
.end method

.method public abstract o(Landroid/os/Bundle;)V
.end method

.method public abstract p()V
.end method

.method public abstract q(Landroid/os/Bundle;)V
.end method

.method public abstract r()V
.end method

.method public abstract s()V
.end method

.method public abstract t(I)Z
.end method

.method public abstract u(I)V
.end method

.method public abstract v(Landroid/view/View;)V
.end method

.method public abstract w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract x(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public abstract y(Ljava/lang/CharSequence;)V
.end method

.method public abstract z(Lb/a/o/b$a;)Lb/a/o/b;
.end method
