.class public Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;
.super Landroidx/fragment/app/Fragment;
.source "SuggestionTipCardFragment.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isFinishingActivity:Z

.field private mContext:Landroidx/fragment/app/c;

.field private preferenceManager:Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

.field private suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private moveContactButtonClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Move Contacts Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private syncContactsButtonClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Syncing Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateSuggestionText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tipCard visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->setTipDescriptionText(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->setTipButtonText(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->setIsContactsMovePreference(Ljava/lang/Boolean;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->setIsTipVisible(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    check-cast p1, Landroidx/fragment/app/c;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->getIsContactsMovePreference()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->preferenceManager:Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setSuggestionMoveContacts(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->preferenceManager:Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setSuggestionSyncContacts(Z)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionTipCard(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    sget-object p3, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreateView SuggestionFragment"

    invoke-static {p3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p3, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p3, v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->preferenceManager:Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/v;->c(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object p3

    const-class v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    const p3, 0x7f0c0090

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRoundedCorner(Landroid/content/Context;Landroid/view/View;)V

    const p2, 0x7f090184

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    const v1, 0x7f06004f

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p3

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p3}, Landroid/widget/TextView;->semSetButtonShapeEnabled(ZI)V

    .line 8
    invoke-static {p1}, Landroidx/databinding/g;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/j;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->setSuggestViewModel(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;)V

    .line 11
    invoke-virtual {p2, p0}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->setSuggestFragment(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionTipCard(Z)V

    .line 13
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onFragmentClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFragmentClicked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->getIsContactsMovePreference()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->moveContactButtonClicked()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->syncContactsButtonClicked()V

    :goto_0
    return-void
.end method

.method public onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "turnOnSyncDialogTag"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "isPositiveButtonClicked"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->syncContactsButtonClicked()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionTipCard(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->isFinishingActivity:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->isFinishingActivity:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "turnOnCMCDialogTag"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "set listener"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->setonCompleteListener(Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method public showSyncContactsDialog()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionTipCard(Z)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    aget-object v0, v1, v0

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->isFinishingActivity:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "turnOnCMCDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->f()I

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {v2}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v2}, Landroidx/fragment/app/k;->f()I

    .line 8
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->c()Z

    .line 9
    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->setonCompleteListener(Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public updateSuggestionTipCard(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->setIsTipVisible(Ljava/lang/Boolean;)V

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isTipForMoveContactAvailable(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->preferenceManager:Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isSuggestionMoveContactsCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tipCardUpdate : Show Move contact tip Card"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f009d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isTipForSyncContactsAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->preferenceManager:Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isSuggestionSyncContactsCancelled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    sget-object p1, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tipCardUpdate : Show Sync contact suggestion tip card"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f010e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->mContext:Landroidx/fragment/app/c;

    .line 11
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 13
    :cond_3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "setTipVisibility"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->suggestionTipCardViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->setIsTipVisible(Ljava/lang/Boolean;)V

    return-void
.end method
