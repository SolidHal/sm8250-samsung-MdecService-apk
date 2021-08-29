.class Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "SecondaryDevicesRemoveRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;->setTouchDelegateToCheckbox(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

.field final synthetic val$holder:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;Landroid/view/View;Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;->this$0:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;->val$parent:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;->val$holder:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;->val$parent:Landroid/view/View;

    new-instance v1, Landroid/view/TouchDelegate;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;->val$parent:Landroid/view/View;

    .line 2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;->val$parent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewAdapter$1;->val$holder:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;

    iget-object v3, v3, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveRecyclerViewHolder;->checkBox:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {v1, v2, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
