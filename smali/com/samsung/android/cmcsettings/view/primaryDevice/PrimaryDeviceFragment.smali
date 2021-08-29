.class public final Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;
.super Landroidx/fragment/app/Fragment;
.source "PrimaryDeviceFragment.kt"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private isCMCActivated:Z

.field public mContext:Landroidx/fragment/app/c;

.field private removeModeChangeListener:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;

.field private sharedViewModel:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

.field private viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "mdec/PrimaryDeviceFragment"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$refreshDeviceData(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->refreshDeviceData()V

    return-void
.end method

.method private final refreshDeviceData()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    const-string v1, "MdecInterfaceFactory.getMdecInterface()"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "MdecInterfaceFactory.get\u2026rface().primaryDeviceList"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->sharedViewModel:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setIsMyDeviceData(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    invoke-static {}, Le/c/a/a;->f()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setBackgroundDrawable(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSelectableBackground()Landroidx/lifecycle/o;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result p1

    if-le p1, v4, :cond_2

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-static {v2}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 3
    :cond_4
    invoke-static {v2}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1
.end method

.method private final showSimSelectDialog()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    const-string v1, "mContext"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v3, "simSelectDialogTag"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v4, v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    if-nez v4, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    if-eqz v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;-><init>()V

    .line 4
    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v4}, Landroidx/fragment/app/k;->e()I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void

    :cond_3
    invoke-static {v1}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_4
    invoke-static {v1}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_5
    invoke-static {v1}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getMContext()Landroidx/fragment/app/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mContext"

    invoke-static {v0}, Le/c/a/a;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSharedViewModel()Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->sharedViewModel:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    return-object v0
.end method

.method public final getViewModel()Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    return-object v0
.end method

.method public final isCMCActivated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->isCMCActivated:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->removeModeChangeListener:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;

    .line 3
    check-cast p1, Landroidx/fragment/app/c;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->c(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object p3

    const-class v0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    const p3, 0x7f0c004f

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/g;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;

    .line 3
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/j;)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->setFragment(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V

    .line 5
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->setStateManager(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;)V

    .line 6
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode()Landroidx/lifecycle/o;

    move-result-object p2

    if-eqz p2, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->setBackgroundDrawable(Z)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroidx/lifecycle/v;->e(Landroidx/fragment/app/c;)Landroidx/lifecycle/u;

    move-result-object p2

    const-class v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->sharedViewModel:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    .line 9
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getMyDeviceData()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;-><init>(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V

    invoke-virtual {p2, p0, v0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 10
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->sharedViewModel:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getIsActivated()Landroidx/lifecycle/o;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;

    invoke-direct {p3, p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;-><init>(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V

    invoke-virtual {p2, p0, p3}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 11
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-static {}, Le/c/a/a;->f()V

    throw p3

    .line 13
    :cond_3
    invoke-static {}, Le/c/a/a;->f()V

    throw p3
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onFragmentClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    const-string v0, "mContext"

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/16 v2, 0x6f

    const/16 v3, 0x1bfb

    invoke-static {p1, v2, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onPreferenceClick: show SIM change dialog"

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode()Landroidx/lifecycle/o;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_7

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPresentSimCount(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-static {v0}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v0}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    return-void

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->showSimSelectDialog()V

    goto :goto_1

    .line 9
    :cond_5
    invoke-static {v0}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_6
    invoke-static {v0}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-static {}, Le/c/a/a;->f()V

    throw v1

    .line 11
    :cond_9
    invoke-static {v0}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1
.end method

.method public final onUpdateRemoveMode(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode()Landroidx/lifecycle/o;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->setBackgroundDrawable(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode()Landroidx/lifecycle/o;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->setBackgroundDrawable(Z)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0900ff

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRoundedCorner(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    if-eqz p2, :cond_0

    const v0, 0x7f090100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRoundedCorner(Landroid/content/Context;Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v2}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Le/c/a/a;->i(Ljava/lang/String;)V

    throw v1
.end method

.method public final setCMCActivated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->isCMCActivated:Z

    return-void
.end method

.method public final setMContext(Landroidx/fragment/app/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->mContext:Landroidx/fragment/app/c;

    return-void
.end method

.method public final setSharedViewModel(Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->sharedViewModel:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    return-void
.end method

.method public final setViewModel(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->viewModel:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    return-void
.end method
