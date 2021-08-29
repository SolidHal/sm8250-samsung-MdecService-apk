.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SecondaryDevicesRemoveListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

.field private mContext:Landroidx/fragment/app/c;

.field private mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const v1, 0x7f090124

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->addSecondaryDevices(Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Ljava/util/HashSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->addRemoveDevices(Ljava/util/HashSet;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Landroidx/fragment/app/c;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mContext:Landroidx/fragment/app/c;

    .line 3
    invoke-static {p1}, Landroidx/lifecycle/v;->e(Landroidx/fragment/app/c;)Landroidx/lifecycle/u;

    move-result-object p1

    const-class v0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->getRemoveDeviceList()Ljava/util/HashSet;

    move-result-object v1

    const v2, 0x7f090067

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 4
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " checked state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->setRemoveDeviceList(Ljava/util/HashSet;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyDataSetChanged()V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mContext:Landroidx/fragment/app/c;

    const v2, 0x7f080071

    invoke-static {v1, v2}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lcom/samsung/android/cmcsettings/view/widget/DividerItemDecorator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 5
    new-instance p3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p3, v1, p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView$r;->setHasStableIds(Z)V

    .line 7
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p3, v2, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 8
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mSdRecyclerViewAdapter:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 9
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 p3, 0x2

    .line 10
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 11
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p3, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setRoundedCorner(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    invoke-static {p0}, Landroidx/lifecycle/v;->c(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object p2

    const-class p3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;

    .line 13
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->getSecondaryDevicesList()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/c;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/c;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;Landroid/view/View;)V

    invoke-virtual {p2, p0, p3}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 14
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->cmcStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveDeviceList()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/d;

    invoke-direct {p3, p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/d;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;)V

    invoke-virtual {p2, p0, p3}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-object p1
.end method
