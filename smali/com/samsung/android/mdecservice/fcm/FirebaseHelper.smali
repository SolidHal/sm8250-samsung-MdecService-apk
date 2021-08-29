.class public Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;
.super Ljava/lang/Object;
.source "FirebaseHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static isFirebaseInitedForEs:Z

.field private static isFirebaseInitedForNms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseInitedForNms:Z

    .line 3
    sput-boolean v0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseInitedForEs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPushTokenForNms(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPushTokenForNms:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "nms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "instanceId is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "appName is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static declared-synchronized initializeFirebaseApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeFirebaseApp: module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1aa94

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x36876d2d

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "entitlement"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "nms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v4

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    sget-boolean p1, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseInitedForNms:Z

    if-nez p1, :cond_4

    .line 4
    new-instance p1, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {p1}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v1, "1:504363609517:android:5a3bcc4787524ce7"

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    const-string v1, "AIzaSyCVtB_1CkKKHKjAP77uKxYnhebtvL0yc0A"

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    const-string v1, "cmcnms-9c5ad"

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    const-string v1, "cmcnms-9c5ad.appspot.com"

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    const-string v1, "504363609517"

    .line 9
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    const-string v1, "nms"

    .line 11
    invoke-static {p0, p1, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    .line 12
    sput-boolean v4, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseInitedForNms:Z

    goto :goto_1

    .line 13
    :cond_4
    sget-object p0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Init already requested for nms"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_5
    sget-boolean p1, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseInitedForEs:Z

    if-nez p1, :cond_6

    .line 15
    new-instance p1, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {p1}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v1, "1:107332916205:android:5a3bcc4787524ce7"

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    const-string v1, "AIzaSyCr0ZAZ10j5F7lcCIAN1OhjNHYabOuJxv4"

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    const-string v1, "mdcomm-8df23"

    .line 18
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    const-string v1, "mdcomm-8df23.appspot.com"

    .line 19
    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    const-string v1, "entitlement"

    .line 21
    invoke-static {p0, p1, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    .line 22
    sput-boolean v4, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->isFirebaseInitedForEs:Z

    goto :goto_1

    .line 23
    :cond_6
    sget-object p0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Init already requested for entitlement"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isFirebaseAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirebaseAppExist: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exist="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
