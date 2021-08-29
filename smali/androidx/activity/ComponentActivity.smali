.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/d;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;,
        Landroidx/activity/ComponentActivity$a;
    }
.end annotation


# instance fields
.field private final mLifecycleRegistry:Landroidx/lifecycle/k;

.field final mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavedStateRegistry:Lb/o/c/a;

.field private mViewModelStore:Landroidx/lifecycle/w;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/core/app/d;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/k;

    .line 3
    new-instance v0, Lb/o/c/a;

    invoke-direct {v0}, Lb/o/c/a;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistry:Lb/o/c/a;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$1;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$1;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_1

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOnBackPressedCallback(Landroidx/activity/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p0, p1}, Landroidx/activity/ComponentActivity;->addOnBackPressedCallback(Landroidx/lifecycle/j;Landroidx/activity/a;)V

    return-void
.end method

.method public addOnBackPressedCallback(Landroidx/lifecycle/j;Landroidx/activity/a;)V
    .locals 3

    .line 2
    invoke-interface {p1}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/g;->b()Landroidx/lifecycle/g$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$b;->b:Landroidx/lifecycle/g$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-instance v2, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;

    invoke-direct {v2, p0, p1, p2}, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;-><init>(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/g;Landroidx/activity/a;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final getBundleSavedStateRegistry()Lb/o/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/o/b<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistry:Lb/o/c/a;

    return-object v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity$a;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/k;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/w;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/w;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/activity/ComponentActivity$a;->b:Landroidx/lifecycle/w;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/w;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/w;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/w;

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/w;

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/a;

    .line 2
    invoke-interface {v1}, Landroidx/activity/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistry:Lb/o/c/a;

    invoke-virtual {v0, p1}, Lb/o/c/a;->c(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/s;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/w;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/ComponentActivity$a;

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v2, Landroidx/activity/ComponentActivity$a;->b:Landroidx/lifecycle/w;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_1
    new-instance v2, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v2}, Landroidx/activity/ComponentActivity$a;-><init>()V

    .line 6
    iput-object v0, v2, Landroidx/activity/ComponentActivity$a;->a:Ljava/lang/Object;

    .line 7
    iput-object v1, v2, Landroidx/activity/ComponentActivity$a;->b:Landroidx/lifecycle/w;

    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/lifecycle/k;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->k(Landroidx/lifecycle/g$b;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistry:Lb/o/c/a;

    invoke-virtual {v0, p1}, Lb/o/c/a;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeOnBackPressedCallback(Landroidx/activity/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;

    .line 5
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->i()Landroidx/activity/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->j()V

    .line 7
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
