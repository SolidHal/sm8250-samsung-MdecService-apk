.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "SecondaryDevicesRemoveRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$r<",
        "Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private removeDeviceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secondaryDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private viewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->removeDeviceList:Ljava/util/HashSet;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->viewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setTouchDelegateToCheckbox(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    .line 2
    new-instance v1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;Landroid/view/View;Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method addRemoveDevices(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->removeDeviceList:Ljava/util/HashSet;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyDataSetChanged()V

    return-void
.end method

.method addSecondaryDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getRemoveDeviceList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->removeDeviceList:Ljava/util/HashSet;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$r0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->onBindViewHolder(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->secondaryDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->getRemoveDeviceList()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0057

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->viewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
