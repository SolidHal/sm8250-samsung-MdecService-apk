.class public final synthetic Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/b;->a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/b;->a:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    check-cast p1, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->a(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    return-void
.end method
