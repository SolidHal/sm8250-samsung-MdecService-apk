.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "SIMSelectOOBEBaseDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private itemSelected:Z

.field private listAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDialogLayout:Landroid/view/View;

.field private mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

.field private simListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment$1;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->itemSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->notifySimOOBEInfoChanged()V

    return-void
.end method

.method private checkAndShowToast(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "changeSelectedSim: Show wifi only sim toast"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f011e

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getSimOOBEDisplayInfoList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private notifySimOOBEInfoChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->listAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->getSimOOBEDisplayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->listAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->listAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->getSimOOBEDisplayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->listAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->simListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    iget-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->itemSelected:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-interface {p1, v0}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string p1, "simSelectOOBEDialogTag"

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->itemSelected:Z

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreateDialog"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c008f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mDialogLayout:Landroid/view/View;

    const v0, 0x7f0f00d4

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setTitle(I)Landroidx/appcompat/app/c$a;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->simListView:Landroid/widget/ListView;

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->setAdapter()V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->simListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mDialogLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->itemSelected:Z

    .line 2
    invoke-direct {p0, p3}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->checkAndShowToast(I)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result p2

    if-ne p2, p1, :cond_1

    const/16 p2, 0x1c1e

    const/16 p4, 0x65

    if-nez p3, :cond_0

    .line 4
    iget-object p5, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    const-string v0, "SIM1"

    invoke-static {p5, p4, p2, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithDetail(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p5, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    const-string v0, "SIM2"

    invoke-static {p5, p4, p2, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithDetail(Landroid/content/Context;IILjava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "selected_sim_index"

    .line 7
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object p4, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result p4

    const-string p5, "cmc_network_type"

    if-eq p4, p3, :cond_2

    .line 9
    invoke-virtual {p2, p5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p2, p5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    :goto_1
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    const-string p4, "simSelectOOBEDialogTag"

    invoke-interface {p3, p2, p4}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;->onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v0, 0x7f0f00fa

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/b;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->listAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->notifySimOOBEInfoChanged()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/b;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectOOBEBaseDialogFragment;->mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
