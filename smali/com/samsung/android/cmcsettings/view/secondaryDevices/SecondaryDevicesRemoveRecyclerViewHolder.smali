.class Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$r0;
.source "SecondaryDevicesRemoveRecyclerViewHolder.java"


# instance fields
.field checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

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

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f090067

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-void
.end method
