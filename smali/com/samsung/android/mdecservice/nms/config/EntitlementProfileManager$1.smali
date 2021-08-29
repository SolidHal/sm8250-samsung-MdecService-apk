.class Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;
.super Ljava/lang/Object;
.source "EntitlementProfileManager.java"

# interfaces
.implements Lcom/samsung/android/cmcsetting/CmcSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedCmcActivation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedCmcActivation:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    return-void
.end method

.method public onChangedCmcCallActivation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedCmcCallActivation:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$100(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$200(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    :cond_0
    return-void
.end method

.method public onChangedCmcMessageActivation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedCmcMessageActivation:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$100(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$200(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    :cond_0
    return-void
.end method

.method public onChangedDeviceInfo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedDeviceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$100(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$200(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    :cond_0
    return-void
.end method

.method public onChangedLineInfo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedLineInfo:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$100(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$200(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    :cond_0
    return-void
.end method

.method public onChangedNetworkMode()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedNetworkMode:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    return-void
.end method

.method public onChangedSamsungAccountInfo()V
    .locals 0

    return-void
.end method

.method public onChangedWatchActivation()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedWatchActivation:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$300(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onWatchActivationChanged(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$100(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    :cond_0
    return-void
.end method
