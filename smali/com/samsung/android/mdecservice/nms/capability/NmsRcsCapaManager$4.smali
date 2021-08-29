.class Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;
.super Lcom/sec/ims/options/CapabilityListener;
.source "NmsRcsCapaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->getCapabilityListener()Lcom/sec/ims/options/CapabilityListener;
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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$200(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapabilitiesChanged uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p1

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$700(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->removeCapaList(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$000(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$800(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;Lcom/sec/ims/options/Capabilities;)V

    :cond_1
    :goto_0
    return-void
.end method
