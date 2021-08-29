.class public Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;
.super Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
.source "ActivityCmcmainBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$j;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/LinearLayout;

.field private final mboundView3:Landroid/widget/LinearLayout;

.field private final mboundView4:Landroid/widget/LinearLayout;

.field private final mboundView5:Landroid/widget/LinearLayout;

.field private final mboundView6:Landroid/widget/LinearLayout;

.field private final mboundView7:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090071

    const/16 v2, 0x8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09018a

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090121

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09007c

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09007b

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09016c

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900d8

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900b1

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900af

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900ad

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900b0

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900ae

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09007a

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09005a

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    sget-object v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x15

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/16 v5, 0x8

    aget-object v5, p3, v5

    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/16 v6, 0x14

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v7, 0xc

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v8, 0xb

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/FrameLayout;

    const/16 v10, 0x13

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/FrameLayout;

    const/16 v11, 0x10

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/FrameLayout;

    const/16 v12, 0x12

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/FrameLayout;

    const/16 v13, 0xf

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v14, 0xe

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v15, 0xa

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/LinearLayout;

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    const/16 v17, 0x9

    aget-object v17, p3, v17

    check-cast v17, Landroidx/appcompat/widget/Toolbar;

    const/16 v18, 0x3

    move/from16 v3, v18

    invoke-direct/range {v0 .. v17}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;Landroidx/appcompat/widget/Toolbar;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 10
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 12
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView4:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 14
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 16
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView6:Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 18
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView7:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 20
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeStateManagerIsActivated(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerIsMyDeviceData(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerIsPD(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

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
    .locals 19

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->mStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x1c

    const-wide/16 v9, 0x19

    const-wide/16 v11, 0x1a

    const/4 v13, 0x0

    if-eqz v6, :cond_11

    and-long v14, v2, v9

    cmp-long v6, v14, v4

    if-eqz v6, :cond_4

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getIsPD()Landroidx/lifecycle/o;

    move-result-object v16

    move-object/from16 v14, v16

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v13, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_1

    .line 8
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 9
    :goto_1
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v6, :cond_3

    if-eqz v14, :cond_2

    const-wide/16 v17, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v17, 0x20

    :goto_2
    or-long v2, v2, v17

    :cond_3
    if-eqz v14, :cond_4

    const/16 v6, 0x8

    goto :goto_3

    :cond_4
    move v6, v13

    :goto_3
    and-long v17, v2, v11

    cmp-long v14, v17, v4

    if-eqz v14, :cond_a

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getIsActivated()Landroidx/lifecycle/o;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    const/4 v15, 0x1

    .line 11
    invoke-virtual {v1, v15, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_6

    .line 12
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    .line 13
    :goto_5
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    if-eqz v14, :cond_8

    if-eqz v13, :cond_7

    const-wide/16 v14, 0x400

    goto :goto_6

    :cond_7
    const-wide/16 v14, 0x200

    :goto_6
    or-long/2addr v2, v14

    :cond_8
    if-eqz v13, :cond_9

    goto :goto_7

    :cond_9
    const/16 v13, 0x8

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v13, 0x0

    :goto_8
    and-long v14, v2, v7

    cmp-long v14, v14, v4

    if-eqz v14, :cond_10

    if-eqz v0, :cond_b

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getIsMyDeviceData()Landroidx/lifecycle/o;

    move-result-object v0

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_9
    const/4 v15, 0x2

    .line 15
    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_c

    .line 16
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Boolean;

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    .line 17
    :goto_a
    invoke-static {v15}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v14, :cond_e

    if-eqz v0, :cond_d

    const-wide/16 v14, 0x100

    goto :goto_b

    :cond_d
    const-wide/16 v14, 0x80

    :goto_b
    or-long/2addr v2, v14

    :cond_e
    if-eqz v0, :cond_f

    const/16 v16, 0x8

    goto :goto_c

    :cond_f
    const/16 v16, 0x0

    :goto_c
    move/from16 v0, v16

    goto :goto_d

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_d
    and-long/2addr v11, v2

    cmp-long v11, v11, v4

    if-eqz v11, :cond_12

    .line 18
    iget-object v11, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v11, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView4:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v11, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object v11, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView6:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v11, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView7:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_12
    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_13

    .line 23
    iget-object v9, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_13
    and-long/2addr v2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    .line 24
    iget-object v2, v1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    .line 25
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
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

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
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->onChangeStateManagerIsMyDeviceData(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->onChangeStateManagerIsActivated(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->onChangeStateManagerIsPD(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method

.method public setStateManager(Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->mStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

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

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBindingImpl;->setStateManager(Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
