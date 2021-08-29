.class public Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;
.super Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;
.source "WelcomeTopLayoutBindingImpl.java"


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
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    sget-object v1, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v7, p3

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->titleText:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->topLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->welcomePageSummary:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeTopWelcomeLayoutSummaryText(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

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
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->mTopWelcomeLayout:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    const-wide/16 v5, 0x7

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0x6

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    and-long v9, v0, v6

    cmp-long v9, v9, v2

    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->getAppName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->getSummaryText()Landroidx/lifecycle/o;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v8

    :goto_1
    const/4 v10, 0x0

    .line 8
    invoke-virtual {p0, v10, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    :cond_2
    move-object v4, v8

    move-object v8, v9

    goto :goto_2

    :cond_3
    move-object v4, v8

    :goto_2
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->titleText:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v5, :cond_5

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->welcomePageSummary:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 12
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
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

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

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->onChangeTopWelcomeLayoutSummaryText(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method

.method public setTopWelcomeLayout(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBinding;->mTopWelcomeLayout:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

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

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/WelcomeTopLayoutBindingImpl;->setTopWelcomeLayout(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
