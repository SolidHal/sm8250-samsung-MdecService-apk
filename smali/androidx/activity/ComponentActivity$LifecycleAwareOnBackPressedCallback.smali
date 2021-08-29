.class Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/activity/a;
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleAwareOnBackPressedCallback"
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/g;

.field private final b:Landroidx/activity/a;

.field final synthetic c:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/g;Landroidx/activity/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->c:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->a:Landroidx/lifecycle/g;

    .line 3
    iput-object p3, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->b:Landroidx/activity/a;

    .line 4
    invoke-virtual {p2, p0}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/g$a;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->c:Landroidx/activity/ComponentActivity;

    iget-object p1, p1, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object p2, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->a:Landroidx/lifecycle/g;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/g;->c(Landroidx/lifecycle/i;)V

    .line 4
    iget-object p2, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->c:Landroidx/activity/ComponentActivity;

    iget-object p2, p2, Landroidx/activity/ComponentActivity;->mOnBackPressedCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->a:Landroidx/lifecycle/g;

    invoke-virtual {v0}, Landroidx/lifecycle/g;->b()Landroidx/lifecycle/g$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g$b;->a(Landroidx/lifecycle/g$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->b:Landroidx/activity/a;

    invoke-interface {v0}, Landroidx/activity/a;->g()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method i()Landroidx/activity/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->b:Landroidx/activity/a;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$LifecycleAwareOnBackPressedCallback;->a:Landroidx/lifecycle/g;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/g;->c(Landroidx/lifecycle/i;)V

    return-void
.end method
