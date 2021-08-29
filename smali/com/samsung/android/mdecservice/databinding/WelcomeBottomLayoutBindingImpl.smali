.class public Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;
.super Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
.source "WelcomeBottomLayoutBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$j;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    sget-object v1, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    move-object v6, p3

    check-cast v6, Landroid/widget/Button;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/Button;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->bottomLayout:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->continueButton:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeBottomWelcomeLayoutButtonText(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->mBottomWelcomeLayout:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    const-wide/16 v5, 0x7

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->getButtonText()Landroidx/lifecycle/o;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v3, v2}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->continueButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
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
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->onChangeBottomWelcomeLayoutButtonText(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method

.method public setBottomWelcomeLayout(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->mBottomWelcomeLayout:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBindingImpl;->setBottomWelcomeLayout(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
