.class Lcom/samsung/android/cmcsettings/view/CMCMainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CMCMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/CMCMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/CMCMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "local_broadcast_intent_message_key"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local receiver message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x170ed6fe

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x426cd2a1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sim_state_change_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "sim_default_data_subscription_change_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p2, v2

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_4

    goto :goto_1

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iget-object p2, p1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;->samsungAccountMobileDataFragment:Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->viewModel:Landroidx/lifecycle/t;

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->getRemoveModeVal()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->updateSAMobileDataPreferenceCategory(Z)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCMainActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/CMCMainBaseActivity;->presenter:Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;->refreshPrimaryDeviceFragment()V

    :goto_1
    return-void
.end method
