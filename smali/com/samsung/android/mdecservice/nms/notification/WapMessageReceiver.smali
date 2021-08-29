.class public Lcom/samsung/android/mdecservice/nms/notification/WapMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WapMessageReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WapMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WapMessageReceiver"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Noti Mgr is not created"

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isNmsInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "NMSServicestub is not initialized."

    .line 5
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "watch is not enabled"

    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "application/vnd.wap.mms-message"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "data"

    .line 10
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 11
    new-instance v1, Lcom/samsung/android/cmcopenapi/pdu/PduParser;

    invoke-direct {v1, p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;-><init>([B)V

    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parse()Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Invalid PUSH data"

    .line 13
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "phone"

    .line 14
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 15
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->sendMmsDdm(Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;I)V

    :cond_4
    return-void
.end method
