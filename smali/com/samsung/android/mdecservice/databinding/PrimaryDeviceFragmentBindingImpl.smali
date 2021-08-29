.class public Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;
.super Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
.source "PrimaryDeviceFragmentBindingImpl.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$j;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView5:Landroid/widget/LinearLayout;

.field private final mboundView6:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090100

    const/16 v2, 0xc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09016a

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    sget-object v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14

    move-object v13, p0

    const/16 v0, 0x8

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 8
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x5

    .line 10
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x6

    .line 12
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView6:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->pdtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->primaryDeviceFragmentForPd:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdsummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simActivation:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v2, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 21
    invoke-virtual {p0, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 22
    new-instance v1, Lcom/samsung/android/mdecservice/generated/callback/OnClickListener;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/mdecservice/generated/callback/OnClickListener;-><init>(Lcom/samsung/android/mdecservice/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v13, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeStateManagerGetDeviceIcon(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerGetDeviceNumber(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerGetPrimaryDeviceName(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerHeaderString(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerIsRemoveMode(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Float;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerIsSelectableBackground(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerIsSimPresent(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerIsVisibletoPD(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerIsVisibletoSD(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerPrimaryDeviceMsisdn(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerPrimaryDeviceName(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

.method private onChangeStateManagerSimIconVisible(Landroidx/lifecycle/o;I)Z
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
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->mFragment:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->onFragmentClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 50

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v6, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->mStateManager:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    const-wide/16 v7, 0x6fff

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    const-wide/16 v12, 0x6100

    const-wide/16 v14, 0x6040

    const-wide/16 v16, 0x6020

    const-wide/16 v18, 0x6080

    const-wide/16 v21, 0x6010

    const-wide/16 v23, 0x6004

    const-wide/16 v25, 0x6002

    const-wide/16 v27, 0x6200

    const-wide/16 v29, 0x6001

    const-wide/16 v31, 0x6008

    const/4 v0, 0x0

    const/16 v33, 0x0

    if-eqz v7, :cond_2e

    and-long v34, v2, v29

    cmp-long v7, v34, v4

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getPrimaryDeviceMsisdn()Landroidx/lifecycle/o;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v33

    .line 7
    :goto_0
    invoke-virtual {v1, v0, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v7, v33

    :goto_1
    and-long v34, v2, v25

    cmp-long v34, v34, v4

    if-eqz v34, :cond_7

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoPD()Landroidx/lifecycle/o;

    move-result-object v36

    move-object/from16 v10, v36

    goto :goto_2

    :cond_2
    move-object/from16 v10, v33

    :goto_2
    const/4 v11, 0x1

    .line 10
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_3

    .line 11
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v10, v33

    .line 12
    :goto_3
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v34, :cond_5

    if-eqz v10, :cond_4

    const-wide/32 v38, 0x100000

    goto :goto_4

    :cond_4
    const-wide/32 v38, 0x80000

    :goto_4
    or-long v2, v2, v38

    :cond_5
    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    const/16 v10, 0x8

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v10, 0x0

    :goto_6
    and-long v38, v2, v23

    cmp-long v11, v38, v4

    if-eqz v11, :cond_a

    if-eqz v6, :cond_8

    .line 13
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode()Landroidx/lifecycle/o;

    move-result-object v11

    goto :goto_7

    :cond_8
    move-object/from16 v11, v33

    :goto_7
    const/4 v8, 0x2

    .line 14
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_9

    .line 15
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    goto :goto_8

    :cond_9
    move-object/from16 v8, v33

    .line 16
    :goto_8
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v8

    move/from16 v20, v8

    goto :goto_9

    :cond_a
    const/16 v20, 0x0

    :goto_9
    and-long v8, v2, v31

    cmp-long v8, v8, v4

    if-eqz v8, :cond_10

    if-eqz v6, :cond_b

    .line 17
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoSD()Landroidx/lifecycle/o;

    move-result-object v9

    goto :goto_a

    :cond_b
    move-object/from16 v9, v33

    :goto_a
    const/4 v11, 0x3

    .line 18
    invoke-virtual {v1, v11, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_c

    .line 19
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_b

    :cond_c
    move-object/from16 v9, v33

    .line 20
    :goto_b
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v8, :cond_e

    if-eqz v9, :cond_d

    const-wide/32 v40, 0x4000000

    goto :goto_c

    :cond_d
    const-wide/32 v40, 0x2000000

    :goto_c
    or-long v2, v2, v40

    :cond_e
    if-eqz v9, :cond_f

    goto :goto_d

    :cond_f
    const/16 v8, 0x8

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v8, 0x0

    :goto_e
    and-long v40, v2, v21

    cmp-long v9, v40, v4

    if-eqz v9, :cond_12

    if-eqz v6, :cond_11

    .line 21
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getPrimaryDeviceName()Landroidx/lifecycle/o;

    move-result-object v9

    goto :goto_f

    :cond_11
    move-object/from16 v9, v33

    :goto_f
    const/4 v11, 0x4

    .line 22
    invoke-virtual {v1, v11, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_12

    .line 23
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_10

    :cond_12
    move-object/from16 v9, v33

    :goto_10
    and-long v40, v2, v16

    cmp-long v11, v40, v4

    if-eqz v11, :cond_14

    if-eqz v6, :cond_13

    .line 24
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getDeviceIcon()Landroidx/lifecycle/o;

    move-result-object v11

    goto :goto_11

    :cond_13
    move-object/from16 v11, v33

    :goto_11
    const/4 v0, 0x5

    .line 25
    invoke-virtual {v1, v0, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_14

    .line 26
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_12

    :cond_14
    move-object/from16 v0, v33

    :goto_12
    and-long v40, v2, v14

    cmp-long v11, v40, v4

    if-eqz v11, :cond_16

    if-eqz v6, :cond_15

    .line 27
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getPrimaryDeviceName()Landroidx/lifecycle/o;

    move-result-object v11

    goto :goto_13

    :cond_15
    move-object/from16 v11, v33

    :goto_13
    const/4 v14, 0x6

    .line 28
    invoke-virtual {v1, v14, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_16

    .line 29
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_14

    :cond_16
    move-object/from16 v11, v33

    :goto_14
    and-long v14, v2, v18

    cmp-long v14, v14, v4

    if-eqz v14, :cond_1c

    if-eqz v6, :cond_17

    .line 30
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSelectableBackground()Landroidx/lifecycle/o;

    move-result-object v15

    goto :goto_15

    :cond_17
    move-object/from16 v15, v33

    :goto_15
    const/4 v4, 0x7

    .line 31
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_18

    .line 32
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_16

    :cond_18
    move-object/from16 v4, v33

    .line 33
    :goto_16
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v14, :cond_1a

    if-eqz v4, :cond_19

    const-wide/32 v14, 0x1000000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x10000000

    goto :goto_17

    :cond_19
    const-wide/32 v14, 0x800000

    or-long/2addr v2, v14

    const-wide/32 v14, 0x8000000

    :goto_17
    or-long/2addr v2, v14

    .line 34
    :cond_1a
    iget-object v5, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->primaryDeviceFragmentForPd:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v4, :cond_1b

    const v14, 0x7f080072

    goto :goto_18

    :cond_1b
    const v14, 0x7f080052

    :goto_18
    invoke-static {v5, v14}, Lb/a/k/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_19

    :cond_1c
    move-object/from16 v5, v33

    const/4 v4, 0x0

    :goto_19
    and-long v14, v2, v12

    const-wide/16 v42, 0x0

    cmp-long v14, v14, v42

    if-eqz v14, :cond_22

    if-eqz v6, :cond_1d

    .line 35
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getSimIconVisible()Landroidx/lifecycle/o;

    move-result-object v15

    goto :goto_1a

    :cond_1d
    move-object/from16 v15, v33

    :goto_1a
    const/16 v12, 0x8

    .line 36
    invoke-virtual {v1, v12, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_1e

    .line 37
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_1b

    :cond_1e
    move-object/from16 v13, v33

    .line 38
    :goto_1b
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    if-eqz v14, :cond_20

    if-eqz v13, :cond_1f

    const-wide/32 v14, 0x10000

    goto :goto_1c

    :cond_1f
    const-wide/32 v14, 0x8000

    :goto_1c
    or-long/2addr v2, v14

    :cond_20
    if-eqz v13, :cond_21

    goto :goto_1d

    :cond_21
    move v13, v12

    goto :goto_1e

    :cond_22
    const/16 v12, 0x8

    :goto_1d
    const/4 v13, 0x0

    :goto_1e
    and-long v14, v2, v27

    const-wide/16 v42, 0x0

    cmp-long v14, v14, v42

    if-eqz v14, :cond_24

    if-eqz v6, :cond_23

    .line 39
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getHeaderString()Landroidx/lifecycle/o;

    move-result-object v14

    goto :goto_1f

    :cond_23
    move-object/from16 v14, v33

    :goto_1f
    const/16 v15, 0x9

    .line 40
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_24

    .line 41
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_20

    :cond_24
    move-object/from16 v14, v33

    :goto_20
    const-wide/16 v38, 0x6400

    and-long v44, v2, v38

    const-wide/16 v42, 0x0

    cmp-long v15, v44, v42

    if-eqz v15, :cond_26

    if-eqz v6, :cond_25

    .line 42
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getDeviceNumber()Landroidx/lifecycle/o;

    move-result-object v15

    goto :goto_21

    :cond_25
    move-object/from16 v15, v33

    :goto_21
    const/16 v12, 0xa

    .line 43
    invoke-virtual {v1, v12, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_26

    .line 44
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_22

    :cond_26
    move-object/from16 v12, v33

    :goto_22
    const-wide/16 v36, 0x6800

    and-long v44, v2, v36

    const-wide/16 v42, 0x0

    cmp-long v15, v44, v42

    if-eqz v15, :cond_2d

    if-eqz v6, :cond_27

    .line 45
    invoke-virtual {v6}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSimPresent()Landroidx/lifecycle/o;

    move-result-object v6

    move-object/from16 v44, v0

    goto :goto_23

    :cond_27
    move-object/from16 v44, v0

    move-object/from16 v6, v33

    :goto_23
    const/16 v0, 0xb

    .line 46
    invoke-virtual {v1, v0, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_28

    .line 47
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/Boolean;

    .line 48
    :cond_28
    invoke-static/range {v33 .. v33}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v15, :cond_2a

    if-eqz v0, :cond_29

    const-wide/32 v45, 0x40000

    or-long v2, v2, v45

    const-wide/32 v45, 0x400000

    goto :goto_24

    :cond_29
    const-wide/32 v45, 0x20000

    or-long v2, v2, v45

    const-wide/32 v45, 0x200000

    :goto_24
    or-long v2, v2, v45

    :cond_2a
    if-eqz v0, :cond_2b

    const/16 v6, 0x8

    goto :goto_25

    :cond_2b
    const/4 v6, 0x0

    :goto_25
    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_26

    :cond_2c
    const/16 v0, 0x8

    :goto_26
    move-object/from16 v47, v12

    move-object/from16 v15, v44

    move-object v12, v11

    move-object v11, v7

    move-wide/from16 v48, v2

    move v3, v0

    move v0, v8

    move/from16 v2, v20

    move-wide/from16 v7, v48

    goto :goto_27

    :cond_2d
    move-object/from16 v44, v0

    move v0, v8

    move-object/from16 v47, v12

    move-object/from16 v15, v44

    const/4 v6, 0x0

    move-object v12, v11

    move-object v11, v7

    move-wide v7, v2

    move/from16 v2, v20

    const/4 v3, 0x0

    goto :goto_27

    :cond_2e
    move-wide v7, v2

    move-object/from16 v5, v33

    move-object v9, v5

    move-object v11, v9

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v47, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_27
    and-long v31, v7, v31

    const-wide/16 v33, 0x0

    cmp-long v20, v31, v33

    if-eqz v20, :cond_2f

    move/from16 v20, v13

    .line 49
    iget-object v13, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_28

    :cond_2f
    move/from16 v20, v13

    :goto_28
    and-long v27, v7, v27

    cmp-long v0, v27, v33

    if-eqz v0, :cond_30

    .line 50
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView6:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_30
    and-long v13, v7, v25

    cmp-long v0, v13, v33

    if-eqz v0, :cond_31

    .line 52
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_31
    and-long v13, v7, v23

    cmp-long v0, v13, v33

    if-eqz v0, :cond_32

    .line 53
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->getBuildSdkInt()I

    move-result v0

    const/16 v10, 0xb

    if-lt v0, v10, :cond_32

    .line 54
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->pdtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 55
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdsummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 56
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 57
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simActivation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 58
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 59
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_32
    and-long v13, v7, v21

    const-wide/16 v21, 0x0

    cmp-long v0, v13, v21

    if-eqz v0, :cond_33

    .line 60
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->pdtitle:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_33
    and-long v9, v7, v18

    cmp-long v0, v9, v21

    if-eqz v0, :cond_34

    .line 61
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->primaryDeviceFragmentForPd:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Landroidx/databinding/p/b;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->primaryDeviceFragmentForPd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    :cond_34
    const-wide/16 v4, 0x4000

    and-long/2addr v4, v7

    cmp-long v0, v4, v21

    if-eqz v0, :cond_35

    .line 63
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->primaryDeviceFragmentForPd:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_35
    and-long v4, v7, v29

    cmp-long v0, v4, v21

    if-eqz v0, :cond_36

    .line 64
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdsummary:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_36
    const-wide/16 v4, 0x6040

    and-long/2addr v4, v7

    cmp-long v0, v4, v21

    if-eqz v0, :cond_37

    .line 65
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdtitle:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_37
    const-wide/16 v4, 0x6800

    and-long/2addr v4, v7

    cmp-long v0, v4, v21

    if-eqz v0, :cond_38

    .line 66
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simActivation:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_38
    and-long v2, v7, v16

    cmp-long v0, v2, v21

    if-eqz v0, :cond_39

    .line 68
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simIcon:Landroid/widget/ImageView;

    invoke-static {v0, v15}, Landroidx/databinding/p/b;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_39
    const-wide/16 v2, 0x6100

    and-long/2addr v2, v7

    cmp-long v0, v2, v21

    if-eqz v0, :cond_3a

    .line 69
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simIcon:Landroid/widget/ImageView;

    move/from16 v13, v20

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3a
    const-wide/16 v2, 0x6400

    and-long/2addr v2, v7

    cmp-long v0, v2, v21

    if-eqz v0, :cond_3b

    .line 70
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simNumber:Landroid/widget/TextView;

    move-object/from16 v12, v47

    invoke-static {v0, v12}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3b
    return-void

    :catchall_0
    move-exception v0

    .line 71
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
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4000

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerIsSimPresent(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_1
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerGetDeviceNumber(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 3
    :pswitch_2
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerHeaderString(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 4
    :pswitch_3
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerSimIconVisible(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 5
    :pswitch_4
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerIsSelectableBackground(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 6
    :pswitch_5
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerPrimaryDeviceName(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 7
    :pswitch_6
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerGetDeviceIcon(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 8
    :pswitch_7
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerGetPrimaryDeviceName(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 9
    :pswitch_8
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerIsVisibletoSD(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 10
    :pswitch_9
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerIsRemoveMode(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 11
    :pswitch_a
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerIsVisibletoPD(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 12
    :pswitch_b
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->onChangeStateManagerPrimaryDeviceMsisdn(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFragment(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->mFragment:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

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

.method public setStateManager(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->mStateManager:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->mDirtyFlags:J

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

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->setFragment(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBindingImpl;->setStateManager(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
