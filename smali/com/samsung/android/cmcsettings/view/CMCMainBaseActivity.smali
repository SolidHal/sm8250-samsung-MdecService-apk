.class public abstract Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;
.super Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;
.source "CMCMainBaseActivity.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;
.implements Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;
.implements Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/databinding/ViewDataBinding;",
        "T:",
        "Landroidx/lifecycle/t;",
        ">",
        "Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;",
        "Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;",
        "Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;",
        "Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;"
    }
.end annotation


# static fields
.field private static final CMC_STATE_ACTIVATION_INTERMEDIATE:Ljava/lang/String; = "cmc_state_activation_intermediate"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected STATE_SA_LOGIN_AND_OOBE:Ljava/lang/String;

.field protected STATE_SELECTION_MODE:Ljava/lang/String;

.field protected allCheckbox:Landroid/widget/CheckBox;

.field protected customRemoveActionView:Landroid/view/View;

.field protected isSALoginAndAccessTokenProcessGoing:Z

.field protected mContext:Landroid/content/Context;

.field protected mLaunchReasonForOOBE:Ljava/lang/String;

.field protected mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

.field protected mRemoveItemSelected:Landroid/widget/TextView;

.field protected mSelectAllView:Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

.field protected mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

.field protected presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

.field protected progressDlgRemoveMode:Landroid/app/ProgressDialog;

.field protected progressDlgSimChange:Landroid/app/ProgressDialog;

.field protected toolbar:Landroidx/appcompat/widget/Toolbar;

.field protected viewDataBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field protected viewId:I

.field protected viewModel:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;-><init>()V

    const-string v0, "selection_mode_state"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->STATE_SELECTION_MODE:Ljava/lang/String;

    const-string v0, "sa_login_and_oobe_state"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->STATE_SA_LOGIN_AND_OOBE:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/fragment/app/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private doPreProcessing()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->init()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() saID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSAinOOBEHistory(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate(): isSAinOOBEHistory : set OOBE 1 and addinOOBEHistory"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setOOBE(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->flowAfterSAAndWelcomeDone()V

    .line 9
    iput-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onLaunchWelcomeActivity()V

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onActivityResult: PreProcessing: ! RESULT_OK"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v0, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    .line 15
    invoke-static {p0, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private launchRequestAccessTokenActivity()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "launchRequestAccessTokenActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    .line 5
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 6
    array-length v1, v1

    if-lez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "launchRequestAccessTokenActivity: SA Account logged in"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "client_id"

    const-string v3, "8f9l37bswj"

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "client_secret"

    const-string v3, ""

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mypackage"

    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    sget-object v0, Lcom/samsung/android/mdeccommon/constants/MdecCommonConstants;->ADDITIONAL_SA_INFO:[Ljava/lang/String;

    const-string v2, "additional"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x68

    .line 13
    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/c;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "launchRequestAccessTokenActivity: SA Account !logged in"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchSALoginActivity()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "client_id"

    const-string v4, "8f9l37bswj"

    .line 4
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mypackage"

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v3, "OSP_02"

    .line 6
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v3, "ADD_ACCOUNT"

    .line 7
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Is_From_SA_Verify"

    .line 8
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x65

    .line 9
    :try_start_0
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/c;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bindView(I)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    const p1, 0x7f09016c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    const p1, 0x7f0900d8

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f06009b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->measureContentFrame()V

    .line 6
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->getContactsResult()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->checkForUpdatesCompleted(I)V

    const p1, 0x7f09018a

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->customRemoveActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    const p1, 0x7f090071

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected checkAndShowToast(ILandroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "changeSelectedSim: Show wifi only sim toast"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f011e

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected closeDialogFragment(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeDialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/b;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method protected closeDialogFragments()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "closeDialogFragments() called"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->f()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcsettings/view/w;->a:Lcom/samsung/android/cmcsettings/view/w;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcsettings/view/s;->a:Lcom/samsung/android/cmcsettings/view/s;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setDialogOpened(Landroid/content/Context;Z)V

    return-void
.end method

.method protected declared-synchronized dismissRemoveDialog()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dismissRemoveDialog start!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dismissRemoveDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dismissRemoveDialog end!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dismissRemoveDialog null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized dismissUpdateJoinDialog()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgSimChange start!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgSimChange:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgSimChange:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgSimChange:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to progressDlgSimChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgSimChange:Landroid/app/ProgressDialog;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgSimChange end!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgSimChange:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgSimChange null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doSAVerificationProcess()Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SAVerificationProcess: SA is NOT logged in... open login activity"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->launchSALoginActivity()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isDialogOpened()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Landroidx/fragment/app/b;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected isNeedToRefreshCMC()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isDialogOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: resultCode is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestCode is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    const-string v1, "SETTINGS"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x68

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p2, v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "flowAfterSAAndWelcomeDone called"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->flowAfterSAAndWelcomeDone()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    const-string p1, "intent_data"

    .line 7
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    goto/16 :goto_1

    :cond_4
    if-ne p2, v2, :cond_6

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onActivityResult: ACCESS_TOKEN_REQUEST_CODE: RESULT_OK"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "user_id"

    .line 12
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "access_token"

    .line 13
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "api_server_url"

    .line 14
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "mcc"

    .line 15
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "region_mcc"

    .line 16
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SA Info-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p2, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-object v0, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p0, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->writeSamsungAccountInfo(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;)V

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 21
    new-instance p2, Ljava/util/Locale;

    const-string p3, ""

    invoke-direct {p2, p3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 22
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receivedSaCcLocale CC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), stored CC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 p3, 0x69

    invoke-static {p1, p3, p2}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)V

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->doPreProcessing()V

    goto :goto_1

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onActivityResult: ACCESS_TOKEN_REQUEST_CODE: ! RESULT_OK"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->showServerConnectionFailedToast()V

    .line 27
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, p1, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    .line 28
    invoke-static {p0, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_7
    if-ne p2, v2, :cond_8

    .line 30
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onActivityResult: ADD_SAMSUNGACCOUNT_REQUEST: RESULT_OK"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->launchRequestAccessTokenActivity()V

    goto :goto_1

    .line 32
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onActivityResult: ADD_SAMSUNGACCOUNT_REQUEST: ! RESULT_OK"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, p1, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    .line 34
    invoke-static {p0, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 35
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mLaunchReasonForOOBE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onCompleteTask(Landroid/os/Bundle;I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->measureContentFrame()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IS_OTHER_COMPANY_RELEASE is :false"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c000b

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSelectAllView:Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->getEntireSelectAllView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->customRemoveActionView:Landroid/view/View;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSelectAllView:Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->getAllCheckBoxView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->allCheckbox:Landroid/widget/CheckBox;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSelectAllView:Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->getRemoveItemSelectedView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mRemoveItemSelected:Landroid/widget/TextView;

    .line 8
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    return-void
.end method

.method public onLaunchSimOOBEDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "launchSimOOBEDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "simSelectOOBEDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v2}, Landroidx/fragment/app/k;->e()I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void
.end method

.method public onLaunchSwitchAccountDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "switchAccountDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v2}, Landroidx/fragment/app/k;->e()I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void
.end method

.method public onLaunchWelcomeActivity()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startWelcomeActivity()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mLaunchReasonForOOBE:Ljava/lang/String;

    const-string v2, "extra_reason_cmcopen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc9

    .line 4
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/c;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CMC Welcome activity not found"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewId:I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    goto/16 :goto_1

    .line 6
    :sswitch_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v3, 0x1bfd

    invoke-static {p1, v0, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onOptionsItemSelected: Move contacts"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    invoke-direct {v3}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;-><init>()V

    invoke-direct {p1, v0, v3}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V

    new-array v0, v1, [Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    .line 10
    :sswitch_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    sget v1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_more_option_help:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onOptionsItemSelected: Help"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.cmcsettings.view.help.HelpPageActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 15
    :sswitch_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v3, 0x1bff

    invoke-static {p1, v0, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onOptionsItemSelected: Contact Us"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Landroid/content/Intent;

    const-string v0, "voc://view/contactUs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "packageName"

    const-string v3, "com.samsung.android.mdecservice"

    .line 18
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appId"

    const-string v3, "dfl1f2n88t"

    .line 19
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appName"

    const-string v3, "CMC"

    .line 20
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    .line 24
    :sswitch_3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v1, 0x1c00

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 25
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 28
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090006 -> :sswitch_3
        0x7f090076 -> :sswitch_2
        0x7f0900b7 -> :sswitch_1
        0x7f0900e1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f090110

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity$1;->$SwitchMap$com$samsung$android$cmcsettings$utils$ViewUtils$SdRemoveMenuState:[I

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isSdRemoveMenuSupported(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestAccessTokenProcess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SAVerificationProcess: SA is logged in: "

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->launchRequestAccessTokenActivity()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState called"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V

    const-string v0, "cmc_state_activation_intermediate"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->STATE_SELECTION_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onRestoreInstanceState called :: RemoveMode::true"

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->STATE_SA_LOGIN_AND_OOBE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->isSALoginAndAccessTokenProcessGoing:Z

    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onResume()V

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04020f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public onShowDefaultAppsDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "showDefaultAppsDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v2}, Landroidx/fragment/app/k;->e()I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void
.end method

.method public onShowTurnOnCMCDialogSD(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "turnOnCMCDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;

    invoke-direct {v0, p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->updateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {p2, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->updateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->setPresenter(Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;)V

    return-void
.end method

.method protected showChangeMainDeviceDialog(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "changeMainDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->setmSelectedIndex(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void
.end method

.method protected showMaxSdConnectedToast()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Max SDs already connected: show toast & turn off the switch"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0f0097

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected showRemoveDeviceProgressDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showRemoveDeviceDialog null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->dismissRemoveDialog()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v2, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    .line 4
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->progressDlgRemoveMode:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected showServerConnectionFailedToast()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error occured while connecting to server: show toast & turn off the switch"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0f00d5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
