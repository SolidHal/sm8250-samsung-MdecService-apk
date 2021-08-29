.class Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$3;
.super Ljava/lang/Object;
.source "NmsRcsCapaManager.java"

# interfaces
.implements Lcom/sec/ims/options/CapabilityManager$ConnectionListener;


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$3;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$3;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$200(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)I

    move-result v1

    const-string v2, "CapabilityManager Connected"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$3;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$200(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)I

    move-result v1

    const-string v2, "CapabilityManager Disconnected"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
