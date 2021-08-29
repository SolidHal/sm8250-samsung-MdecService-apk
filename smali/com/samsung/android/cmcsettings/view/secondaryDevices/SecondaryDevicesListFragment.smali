.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SecondaryDevicesListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

.field private mContext:Landroidx/fragment/app/c;

.field private mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;

.field private mSecondaryDeviceListViewModel:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const v1, 0x7f090124

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "secondaryDevicesList is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondaryDevicesList size::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->addSecondaryDevices(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Landroidx/fragment/app/c;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    .line 3
    invoke-static {p1}, Landroidx/lifecycle/v;->e(Landroidx/fragment/app/c;)Landroidx/lifecycle/u;

    move-result-object p1

    const-class v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v2

    if-eqz p2, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    const/16 v5, 0x1c1d

    invoke-static {v1, v2, v5, v3, v4}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mSecondaryDeviceListViewModel:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->changeConnectedDeviceActivation(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->CONNECTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    .line 2
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getMdecDeviceInfo(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)Ljava/util/Optional;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isRespectiveControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    const/16 v1, 0x6f

    sget v2, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_main_sd_detail_click:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    const-class v2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "device_data"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    sget p1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_page_view_id:I

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c0055

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090127

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance p3, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    const v2, 0x7f080071

    invoke-static {v1, v2}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 5
    new-instance p3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p3, v1, p0, p0, p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;

    .line 6
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 7
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 8
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 p3, 0x2

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 10
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p3, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRoundedCorner(Landroid/content/Context;Landroid/view/View;)V

    .line 11
    invoke-static {p0}, Landroidx/lifecycle/v;->c(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object p2

    const-class p3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->mSecondaryDeviceListViewModel:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;

    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->getSecondaryDevicesList()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/a;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/a;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;Landroid/view/View;)V

    invoke-virtual {p2, p0, p3}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-object p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setIsRemoveMode(Z)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    return v1
.end method
