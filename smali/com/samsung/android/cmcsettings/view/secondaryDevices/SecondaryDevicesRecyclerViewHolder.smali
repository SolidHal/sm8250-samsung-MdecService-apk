.class Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$r0;
.source "SecondaryDevicesRecyclerViewHolder.java"


# instance fields
.field progressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field sdDivider:Landroid/view/View;

.field sdMainLayout:Landroid/widget/LinearLayout;

.field sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

.field public summary:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r0;-><init>(Landroid/view/View;)V

    const v0, 0x7f090185

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f090169

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->summary:Landroid/widget/TextView;

    const v0, 0x7f090125

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdMainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090126

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->progressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const v0, 0x7f090128

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdSwitchWidget:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f090122

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewHolder;->sdDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method getSummary(Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;

    invoke-direct {v0, p1}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->getActiveServiceMap()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "callforking"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "message"

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    const p1, 0x7f0f0029

    goto :goto_1

    :cond_2
    const p1, 0x7f0f006f

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const p1, 0x7f0f009b

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const p1, 0x7f0f0028

    :cond_4
    return p1
.end method
