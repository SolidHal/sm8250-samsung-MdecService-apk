.class final Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;
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
        "Ljava/util/List<",
        "+",
        "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->isCMCActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->access$refreshDeviceData(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->getViewModel()Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->updateUI(Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Le/c/a/a;->f()V

    throw v0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment$onCreateView$2;->this$0:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;->getViewModel()Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->updateUI(Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Le/c/a/a;->f()V

    throw v0
.end method
