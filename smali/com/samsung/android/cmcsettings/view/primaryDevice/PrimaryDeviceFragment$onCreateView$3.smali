.class final Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;
.super Ljava/lang/Object;
.source "PrimaryDeviceFragment.kt"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/p<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;->onChanged(Z)V

    return-void
.end method

.method public final onChanged(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->setCMCActivated(Z)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->isCMCActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$3;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->access$refreshDeviceData(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V

    :cond_0
    return-void
.end method
