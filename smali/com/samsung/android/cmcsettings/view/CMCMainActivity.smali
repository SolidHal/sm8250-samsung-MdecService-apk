.class public Lcom/samsung/android/cmcsettings/view/CMCMainActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;
.source "CMCMainActivity.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;
.implements Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity<",
        "Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;",
        "Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;",
        ">;",
        "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;",
        "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;",
        "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;",
        "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;",
        "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;",
        "Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_STATE:Ljava/lang/String; = "activity_state"

.field private static final CMC_STATE_ACTIVATION_INTERMEDIATE:Ljava/lang/String; = "cmc_state_activation_intermediate"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final STATE_RESTORED:Ljava/lang/String; = "state_restored"


# instance fields
.field private isFinishingActivity:Z

.field private launchReason:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mQrSaid:Ljava/lang/String;

.field private mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field protected samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

.field private secondaryDevicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->isFinishingActivity:Z

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$2;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addOrRemoveOtherFragments(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->addSAMobileDataPreferenceCategory(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateUiForRemoveMode(Ljava/util/HashSet;)V

    return-void
.end method

.method private checkAndUpdateRemoveDeviceSet()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRemoveDeviceSet(Landroid/content/Context;Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->addOrRemoveOtherFragments(Z)V

    return-void
.end method

.method private getResourceLayout()I
    .locals 1

    const v0, 0x7f0c000d

    return v0
.end method

.method public static synthetic s(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateUiForRemoveMode(Ljava/lang/Boolean;)V

    return-void
.end method

.method private setOnNavigationItemClickListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/cmcsettings/view/m;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/m;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private updateActionBar(ZLjava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f090121

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 3
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-virtual {p1, v2, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 6
    invoke-virtual {v1, v3, v3, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->setSelectedCountText(Ljava/util/HashSet;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/a;->v(Z)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/a;->t(Z)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->customRemoveActionView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f090071

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 17
    invoke-virtual {p1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->v(Z)V

    .line 20
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->t(Z)V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRemoveButtonUI(ZLjava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->allCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateRemoveDeviceSet()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setIsRemoveMode(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveDeviceListValue()Ljava/util/HashSet;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 6
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    return-void
.end method

.method private updateUiForRemoveMode(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveDeviceListValue()Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateUiForRemoveMode(ZLjava/util/HashSet;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->updateLinkedDeviceFragment(Z)V

    return-void
.end method

.method private updateUiForRemoveMode(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateUiForRemoveMode(ZLjava/util/HashSet;)V

    return-void
.end method

.method private updateUiForRemoveMode(ZLjava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateActionBar(ZLjava/util/HashSet;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveButtonUI(ZLjava/util/HashSet;)V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getSwitchState(Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 7
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    invoke-virtual {p2, p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->updateSAMobileDataPreferenceCategory(Z)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p2

    const-string v0, "PrimaryDeviceFragment"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->onUpdateRemoveMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()I

    :cond_0
    return-void
.end method

.method public synthetic e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public synthetic f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getSwitchState(Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    return-void
.end method

.method public synthetic g(Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelectedForJoining(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showChangeMainDeviceDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic h()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onJoinServiceAsPrimaryDevice: hideProgressBarInSwitch"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    return-void
.end method

.method public synthetic i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 2
    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getSwitchState(Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    return-void
.end method

.method public isAllChecked(Ljava/util/HashSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showMaxSdConnectedToast()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    return-void
.end method

.method public synthetic k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public synthetic l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->refreshPrimaryDeviceFragment()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->initSDCallAndMessageFragment()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveDeviceListValue()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateUiForRemoveMode(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public synthetic m(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->removeinOOBEHistory(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setOOBE(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onLaunchWelcomeActivity()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->invalidateOptionsMenu()V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    :goto_0
    return-void
.end method

.method public synthetic n(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->invalidateOptionsMenu()V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->on:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    :goto_0
    return-void
.end method

.method public synthetic o(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0f00d5

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onActivatePDDevice()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->activate()V

    return-void
.end method

.method public onAddPrimaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddPrimaryDevice: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " errorCode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 5
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pd.getDeviceId()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/samsung/android/cmcsettings/view/q;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/cmcsettings/view/q;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelectedForJoining(Landroid/content/Context;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->updatePrimaryDeviceForSimSlotChanged(ILjava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_1

    .line 10
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p2, p1, :cond_3

    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, p1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    new-instance p1, Lcom/samsung/android/cmcsettings/view/b;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/b;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onAddSecondaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinServiceAsSecondaryDevice: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_SECONDERY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p1, Lcom/samsung/android/cmcsettings/view/j;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/j;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onAddSecondaryDevice result is false"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/samsung/android/cmcsettings/view/e;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/e;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    new-instance p1, Lcom/samsung/android/cmcsettings/view/d;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/d;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveMode(ZLjava/util/HashSet;)V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveButtonUI(ZLjava/util/HashSet;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 6
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCMCActivationChange()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    sget-object v1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCmcActivation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_1
    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveMode(ZLjava/util/HashSet;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->closeDialogFragments()V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setIsActivated(Ljava/lang/Boolean;)V

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->on:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    return-void
.end method

.method public onCMCActivationIntermediateChange()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCMCActivationIntermediate changed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v2, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setIsActivated(Ljava/lang/Boolean;)V

    if-nez v0, :cond_1

    if-nez v1, :cond_3

    .line 5
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getSwitchState(Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveMode(ZLjava/util/HashSet;)V

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->closeDialogFragments()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->invalidateOptionsMenu()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013a

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "all select view clicked"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v1, 0x1c11

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->allCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->allCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcsettings/view/a;->a:Lcom/samsung/android/cmcsettings/view/a;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcsettings/view/u;->a:Lcom/samsung/android/cmcsettings/view/u;

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v0, "removeDeviceDialogTag"

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->closeDialogFragment(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    :cond_1
    return-void
.end method

.method public onCompleteTask(Landroid/os/Bundle;I)V
    .locals 4

    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_2

    const-string p2, "isChecked"

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2
    sget-object p2, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange(cmc_network_type changed): checkedValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    sget v1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_main_activity_use_mobile_network:I

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {p2, v0, v1, v2, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0f009c

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    move p2, p1

    .line 5
    :cond_1
    invoke-static {p0, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkType(Landroid/content/Context;I)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "activity_state"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "state_restored"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_reason_cmcopen"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mLaunchReasonForOOBE:Ljava/lang/String;

    .line 6
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 8
    invoke-static {p0}, Landroidx/lifecycle/v;->e(Landroidx/fragment/app/c;)Landroidx/lifecycle/u;

    move-result-object p1

    const-class v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    .line 9
    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setCMCStateManager(Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;)V

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->getResourceLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->bindView(I)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/j;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->setStateManager(Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;)V

    .line 13
    new-instance p1, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/MdecUIPresenter;-><init>(Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->setPresenter(Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;)V

    .line 14
    new-instance p1, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    invoke-direct {p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const v0, 0x7f0900ad

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/k;->k(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->h()V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->initFragments()V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    const-string v0, "QR_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "said"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    .line 19
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sa ID from : QR - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    :cond_2
    :goto_0
    const p1, 0x7f09005a

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->setOnNavigationItemClickListener()V

    .line 23
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    .line 24
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getIsActivated()Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/cmcsettings/view/l;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/l;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 25
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getIsRemoveMode()Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/cmcsettings/view/r;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/r;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 26
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveDeviceList()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/cmcsettings/view/f;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/f;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method public onDeletePrimaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeletePrimaryDevice: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllSDData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDeleteProvisionedDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteProvisionedDevice: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->removeDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteSecondaryDevice: deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p2, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveDeviceListValue()Ljava/util/HashSet;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->postRemoveDeviceList(Ljava/util/HashSet;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->postIsRemoveMode(Z)V

    .line 8
    new-instance p1, Lcom/samsung/android/cmcsettings/view/v;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/v;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "removeDeviceDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x708d0384

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "simSelectDialogTag"

    if-eq v0, v1, :cond_1

    const v1, 0x62667dbf

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_1
    const-string v0, "simSelectOOBEDialogTag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 2
    sget p2, Lcom/samsung/android/mdeccommon/utils/SimUtils;->SIM_SLOT_1:I

    const-string v0, "selected_sim_index"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 3
    sget-object p2, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " REQUEST_SELECT_SIM_CARD result OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {p2, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->registerDevice(I)V

    goto :goto_2

    .line 5
    :cond_4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onItemSelected: REQUEST_SELECT_SIM_CARD: !RESULT_OK"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 7
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    goto :goto_2

    :cond_5
    const-string p2, "position"

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 9
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result p2

    if-eq p2, p1, :cond_6

    .line 10
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->changeSelectedSim(I)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/b;->dismiss()V

    :cond_6
    if-ne p2, p1, :cond_7

    .line 14
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/b;->dismiss()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v1

    sget v2, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_main_activity_more_menu:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNetworkModeChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->updateSAMobileDataPreferenceCategory(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onNewIntent(Landroid/content/Intent;)V

    :try_start_0
    const-string v0, "extra_reason_cmcopen"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    const-string v0, "said"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mLaunchReasonForOOBE:Ljava/lang/String;

    return-void
.end method

.method protected onOOBESetOff()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090110

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v1, 0x1bfe

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsItemSelected: Remove:: Remove mode::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveMode(ZLjava/util/HashSet;)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->checkAndUpdateRemoveDeviceSet()V

    :cond_0
    return v0

    .line 7
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " errorCode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/samsung/android/cmcsettings/view/i;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/i;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->addNewDevices(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/cmcsettings/view/a;->a:Lcom/samsung/android/cmcsettings/view/a;

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/cmcsettings/view/u;->a:Lcom/samsung/android/cmcsettings/view/u;

    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteOldDevices(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onResume()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->closeDialogFragments()V

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isDialogOpened(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 8
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelectedForJoining(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showChangeMainDeviceDialog(Ljava/lang/String;I)V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setDialogOpened(Landroid/content/Context;Z)V

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v2, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    const/4 v4, 0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setIsActivated(Ljava/lang/Boolean;)V

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->invalidateOptionsMenu()V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->secondaryDevicesList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceCategoryStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v5, v6, v7, v2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveDeviceSet()V

    .line 16
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {v1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->refreshPrimaryDeviceFragment()V

    .line 17
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getSwitchState(Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 18
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 19
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    invoke-interface {v2, v1, v5}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->launchReasonAction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->launchReason:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->stopCMCOnCondition()V

    .line 23
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 24
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->updateRemoveMode(ZLjava/util/HashSet;)V

    .line 25
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isProgressDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showRemoveDeviceProgressDialog()V

    :cond_6
    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationForSkt(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v0, v1, :cond_7

    .line 29
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activation is not matched between activation and activation_skt"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState called:: Remove mode::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activity_state"

    const-string v1, "state_restored"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "cmc_state_activation_intermediate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->STATE_SELECTION_MODE:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->STATE_SA_LOGIN_AND_OOBE:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetCMCActivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCMCActivation: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " currServiceMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p3, Lcom/samsung/android/cmcsettings/view/g;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/cmcsettings/view/g;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    invoke-virtual {p0, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCMCDeactivation: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " currServiceMode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/samsung/android/cmcsettings/view/k;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/cmcsettings/view/k;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Z)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->setCheckForUpdate(ZZ)V

    return-void
.end method

.method public onSetSdCallServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateSdCallSwitch: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isActivation = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetSdMessageServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateSdMessageSwitch: result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isActivation = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetSdServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDeviceServiceMode: deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " currServiceMode = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p4}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3
    new-instance p1, Lcom/samsung/android/cmcsettings/view/o;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/cmcsettings/view/o;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Z)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShowProgressChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isProgressDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mShowProgressChange"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showRemoveDeviceProgressDialog()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->dismissRemoveDialog()V

    :goto_0
    return-void
.end method

.method public onSimSlotChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->setConfigurationForUseMobileData(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->updateSAMobileDataPreferenceCategory(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onStart()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStart() called"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->isFinishingActivity:Z

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "sim_state_change_local_broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/l/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onStop()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->isFinishingActivity:Z

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/l/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->dismissRemoveDialog()V

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->dismissUpdateJoinDialog()V

    return-void
.end method

.method public onSwitchChanged(Landroidx/appcompat/widget/SwitchCompat;Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onSwitchChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->performSwitchOperations(ZLjava/lang/String;)V

    return-void
.end method

.method public onUpdatePDPAgreement(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatePDPAgreement: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelectedForJoining(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->joinAsXDevice(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/samsung/android/cmcsettings/view/h;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/h;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onUpdatePrimaryDeviceForSimSlotChanged(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/view/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/cmcsettings/view/c;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->refreshSuggestionTipCardFragment(Z)V

    :cond_0
    return-void
.end method

.method public synthetic p()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic q(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateJoinedService: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cmc_activation_intermediate 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, p1, :cond_4

    .line 4
    :cond_1
    new-instance p1, Lcom/samsung/android/cmcsettings/view/p;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/p;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->refreshPrimaryDeviceFragment()V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->onSimSlotChange()V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->checkAndShowToast(ILandroid/content/Context;)V

    .line 8
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result p1

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkTypeForSlotId(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "DEBUGJ mobile data turned on automatically"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f0128

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 11
    :cond_3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "DEBUGJ mobile data not turned on automatically"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_1
    new-instance p1, Lcom/samsung/android/cmcsettings/view/n;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/n;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic r(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v1, 0x1c12

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveDeviceListValue()Ljava/util/HashSet;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRemoveDeviceSet(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "removeDeviceDialogTag"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->c()Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removeButton:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public refreshSuggestionTipCardFragment(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "SuggestionTipCardFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionTipCard(Z)V

    :cond_0
    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/k;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {p2}, Landroidx/fragment/app/k;->f()I

    :cond_0
    return-void
.end method

.method public removePreviousFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/k;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2, p1}, Landroidx/fragment/app/k;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 3
    new-instance v1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$1;-><init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;Landroidx/fragment/app/k;Landroidx/fragment/app/Fragment;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p4

    invoke-virtual {p4, p3, p1, p2}, Landroidx/fragment/app/k;->l(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {p4}, Landroidx/fragment/app/k;->f()I

    :cond_0
    return-void
.end method

.method public replaceFragment(Ljava/lang/String;I)V
    .locals 9

    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->isFinishingActivity:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v2, -0x1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6909665d

    const-string v5, "SECONDARY_DEVICES_LIST_FRAGMENT"

    const-string v6, "SECONDARY_DEVICES_REMOVE_LIST_FRAGMENT"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v3, v4, :cond_3

    const v4, -0x11ecd2b8

    if-eq v3, v4, :cond_2

    const v4, 0x1344f424

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "PrimaryDeviceFragment"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v8

    :cond_4
    :goto_0
    if-eqz v2, :cond_9

    if-eq v2, v8, :cond_7

    if-eq v2, v7, :cond_5

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 9
    new-instance v0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;-><init>()V

    .line 10
    :cond_6
    invoke-virtual {v1, p2, v0, p1}, Landroidx/fragment/app/k;->l(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    .line 11
    new-instance v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;-><init>()V

    .line 12
    invoke-virtual {v1, p2, v0, p1}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    .line 13
    :cond_8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removePreviousFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/k;)V

    goto :goto_1

    :cond_9
    if-nez v0, :cond_a

    .line 15
    new-instance v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;-><init>()V

    .line 16
    invoke-virtual {v1, p2, v0, p1}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    .line 17
    :cond_a
    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->removePreviousFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/k;)V

    .line 19
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/k;->e()I

    return-void
.end method

.method public restartCMCOnCondition()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isNeedToRefreshCMC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mQrSaid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->performSwitchOperations(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSelectedCountText(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->customRemoveActionView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/a;->x(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSelectAllView:Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mRemoveItemSelected:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->allCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->isAllChecked(Ljava/util/HashSet;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSelectAllView:Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->isAllChecked(Ljava/util/HashSet;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->updateContentDescriptionTextForAllSelectionView(IZ)V

    .line 7
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->allCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mRemoveItemSelected:Landroid/widget/TextView;

    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mRemoveItemSelected:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopCMCOnCondition()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isNeedToRefreshCMC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 3
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    :cond_0
    return-void
.end method

.method public updateRemoveMode(ZLjava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p2, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setIsRemoveMode(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->invalidateOptionsMenu()V

    return-void
.end method
