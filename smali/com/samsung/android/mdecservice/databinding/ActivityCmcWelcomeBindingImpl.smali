.class public Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;
.super Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
.source "ActivityCmcWelcomeBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$j;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/ScrollView;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView11:Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

.field private final mboundView12:Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$j;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$j;-><init>(I)V

    sput-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    const-string v1, "welcome_top_layout"

    const-string v2, "welcome_bottom_layout"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$j;->a(I[Ljava/lang/String;[I[I)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09018e

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09009c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09009b

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x7f0c0098
        0x7f0c0095
    .end array-data
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    sget-object v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView0:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 8
    aget-object p1, p3, p1

    check-cast p1, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView11:Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

    .line 9
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 p1, 0x3

    .line 10
    aget-object p1, p3, p1

    check-cast p1, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView12:Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->mWelcome:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView11:Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->setTopWelcomeLayout(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView12:Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->setBottomWelcomeLayout(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView11:Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView12:Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView11:Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView12:Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView11:Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView12:Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 6
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/j;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/j;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView11:Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/j;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mboundView12:Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/j;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->setWelcome(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setWelcome(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->mWelcome:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
