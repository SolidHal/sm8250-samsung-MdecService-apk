.class public final synthetic Lcom/samsung/android/cmcsettings/view/secondaryDevices/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/a;->a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/a;->a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/a;->b:Landroid/view/View;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesListFragment;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method
