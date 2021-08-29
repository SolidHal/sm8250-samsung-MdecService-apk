.class public final synthetic Lcom/samsung/android/cmcsettings/view/secondaryDevices/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/d;->a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/d;->a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRemoveListFragment;->b(Ljava/util/HashSet;)V

    return-void
.end method
