.class Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo$1;
.super Landroid/database/ContentObserver;
.source "CheckFcmInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FCM token is updated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "entitlement"

    .line 2
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "entitlementFireBaseApp is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "instanceId is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "entitlementPushToken is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;

    invoke-virtual {p2}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->setFcmPushToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 11
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mFcmRefreshLock notify"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;->access$100()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 13
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
