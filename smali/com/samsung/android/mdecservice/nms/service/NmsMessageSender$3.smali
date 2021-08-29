.class Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$3;
.super Lc/a/a/a/c$a;
.source "NmsMessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$3;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-direct {p0}, Lc/a/a/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(III)V
    .locals 3

    const/16 v0, 0x25b7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25b2

    if-ne p1, v0, :cond_2

    .line 1
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse from BG Message service: appid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] msgID["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]   value["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$3;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1200(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$3;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1200(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$3;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1200(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p3, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setRelayResponse()V

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->writeResult(Z)V

    :cond_2
    return-void
.end method
