.class Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;
.super Landroid/content/BroadcastReceiver;
.source "NmsRcsCapaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.mdecservice.INTENT_CONTACT_REFRESH_TIMEOUT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$100()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$200(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)I

    move-result p2

    const-string v0, "onReceive: contact refresh timeout."

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$300(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$400(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$500(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$600(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    :cond_1
    return-void
.end method
