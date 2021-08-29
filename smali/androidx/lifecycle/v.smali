.class public Landroidx/lifecycle/v;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# direct methods
.method private static a(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/app/Activity;)Landroid/app/Application;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/lifecycle/v;->d(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/u$b;)Landroidx/lifecycle/u;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/u$b;)Landroidx/lifecycle/u;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/v;->b(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/u$a;->b(Landroid/app/Application;)Landroidx/lifecycle/u$a;

    move-result-object p1

    .line 3
    :cond_0
    new-instance v0, Landroidx/lifecycle/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/w;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/w;Landroidx/lifecycle/u$b;)V

    return-object v0
.end method

.method public static e(Landroidx/fragment/app/c;)Landroidx/lifecycle/u;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroidx/lifecycle/v;->f(Landroidx/fragment/app/c;Landroidx/lifecycle/u$b;)Landroidx/lifecycle/u;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroidx/fragment/app/c;Landroidx/lifecycle/u$b;)Landroidx/lifecycle/u;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->b(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/u$a;->b(Landroid/app/Application;)Landroidx/lifecycle/u$a;

    move-result-object p1

    .line 3
    :cond_0
    new-instance v0, Landroidx/lifecycle/u;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/w;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/w;Landroidx/lifecycle/u$b;)V

    return-object v0
.end method
