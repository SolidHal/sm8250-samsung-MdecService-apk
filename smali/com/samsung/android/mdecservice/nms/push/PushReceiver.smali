.class public Lcom/samsung/android/mdecservice/nms/push/PushReceiver;
.super Ljava/lang/Object;
.source "PushReceiver.java"


# static fields
.field public static final KEY_ROOT_BODY:Ljava/lang/String; = "body"

.field public static final KEY_ROOT_DORETRIEVEPUSH:Ljava/lang/String; = "doRetrievePush"

.field public static final KEY_ROOT_NMSEVENTLIST:Ljava/lang/String; = "nmsEventList"

.field public static final KEY_ROOT_RELAYNOTI:Ljava/lang/String; = "relayNoti"

.field private static final LOG_TAG:Ljava/lang/String; = "PushReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

.field private mLostPushDetactor:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

.field private mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    .line 4
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 5
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mLostPushDetactor:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    return-void
.end method

.method private distributePushByRoot(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "nmsEventList"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "NMS Not Registered.Drop push"

    const-string v4, "PushReceiver"

    if-eqz v1, :cond_1

    const-string v0, "handling nmsEventList"

    .line 3
    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->parseJSON()V

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getIndex()Ljava/lang/Integer;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->getCallBackData()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-virtual {v5, v1}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->isSaRegistered(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-static {v4, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handleNmsPushNotification(Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;)V

    :goto_0
    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    goto :goto_1

    :cond_1
    const-string v1, "doRetrievePush"

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "handling doRetrievePush"

    .line 13
    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->parseJSON()V

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->getIndex()Ljava/lang/Integer;

    move-result-object p1

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->getCallBackData()Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-virtual {v5, v1}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->isSaRegistered(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 20
    invoke-static {v4, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handlDoRetrievePushNotification(Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;)V

    goto :goto_0

    :cond_3
    const-string v1, "relayNoti"

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "handling relayNoti"

    .line 23
    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->parseJSON()V

    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getIndex()Ljava/lang/Integer;

    move-result-object p1

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getPMsgRelayDate()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->getCallBackData()Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-virtual {v5, v1}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->isSaRegistered(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 30
    invoke-static {v4, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handleRelayNotiPushNotification(Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;)V

    goto :goto_0

    :cond_5
    move-object p1, v2

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mLostPushDetactor:Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->recordPushHistory(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private isReadyToHandlePush()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isDeactivated()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PushReceiver"

    if-eqz v0, :cond_0

    const-string v0, "Entitlement profile deactivated, Drop the push data"

    .line 2
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->triggerDisablingWhenDeactivated()V

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->isReadyToSync()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Not ready to Sync. Drop the push data"

    .line 5
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    const-string v3, "eventTypeMessage"

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->isSaRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->mNmsPushNotificationHandler:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    const-string v3, "eventTypeCall"

    .line 7
    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->isSaRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NMS not registered. Drop the push data"

    .line 8
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump()V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushReceiver"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->isReadyToHandlePush()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message data payload: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setPushMessage(Ljava/lang/String;)V

    .line 8
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "body"

    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/push/PushReceiver;->distributePushByRoot(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Notification Body: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
