.class public Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "MdecInstanceIDListenerService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "appName is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "instanceId is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entitlement"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Refreshed token: "

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->updatePushTokenToDb(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "nms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 15
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    sget-object v2, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->notifyPushTokenChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_4
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Nms Service is not initialized"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19
    :cond_5
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "NmsServiceStub is not created"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public updatePushTokenToDb(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FCM token is updated new : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/MdecInstanceIDListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FCM token is updated old : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "FCM_PUSH_TOKEN"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Fcms;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Fcms;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method
