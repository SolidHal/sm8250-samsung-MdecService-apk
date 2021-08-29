.class public final synthetic Lcom/samsung/android/cmcsettings/view/secondaryDevices/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/b;->b:Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/b;->b:Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDevicesRecyclerViewAdapter;->f(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;Landroid/view/View;)V

    return-void
.end method
