.class Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;
.super Ljava/lang/Object;
.source "EntitlementProfileManager.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(IZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: networkType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$400(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/mdeccommon/net/ITelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isWifiConnected ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$300(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onNetworkStateChanged(IZ)V

    return-void
.end method

.method public onWifiConnected()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWifiConnected:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$300(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onNetworkStateChanged(IZ)V

    return-void
.end method

.method public onWifiDisconnected()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWifiDisconnected:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$300(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onNetworkStateChanged(IZ)V

    return-void
.end method
