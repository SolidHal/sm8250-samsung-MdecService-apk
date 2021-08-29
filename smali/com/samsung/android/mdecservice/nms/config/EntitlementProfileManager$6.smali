.class Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;
.super Ljava/lang/Object;
.source "EntitlementProfileManager.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecvSamsungAccountError(I)V
    .locals 0

    return-void
.end method

.method public onRecvSamsungAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object p3

    const-string v0, "onRecvSamsungAccountInfo"

    invoke-static {p3, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old mSaAccessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 3
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$600(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p3, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old mSaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$700(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    const/16 v0, 0x64

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$802(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;I)I

    .line 9
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$600(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$700(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 12
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$602(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$702(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p1, p4}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$902(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$1000(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notify Samsung Account Info changed, accessToken="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 16
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$600(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "[NMS2]"

    .line 17
    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$300(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$600(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$900(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->onSamsungAccountInfoChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$6;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    :cond_2
    return-void
.end method
