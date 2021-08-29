.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "SIMSelectBaseDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

.field private mSimSelectAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

.field private simListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment$1;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

    const-string v0, "simSelectDialogTag"

    .line 4
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->notifySimInfoChanged()V

    return-void
.end method

.method private getSimDisplayInfoList()Ljava/util/ArrayList;
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
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private notifySimInfoChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mSimSelectAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->getSimDisplayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mSimSelectAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mSimSelectAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setAdapter()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->getSimDisplayInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mSimSelectAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->simListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Simselect base dialog created"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string p1, "simSelectDialogTag"

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const v1, 0x7f0c008e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0900d6

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->simListView:Landroid/widget/ListView;

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->setAdapter()V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->simListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "position"

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;->onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Simselect base dialog onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/b;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mSimSelectAdapter:Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->notifySimInfoChanged()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/b;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->mReceiveSimDefaultDataSubscriptionState:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
