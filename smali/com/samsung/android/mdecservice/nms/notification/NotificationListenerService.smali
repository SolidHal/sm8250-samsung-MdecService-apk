.class public Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService$NOTIFICATION_ID;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotiService"

.field private static currentNotiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private static sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;
    .locals 2

    const-class v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static rebind(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V
    .locals 2

    const-string v0, "NotiService"

    const-string v1, "requestRebind "

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 3
    new-instance p1, Landroid/content/ComponentName;

    const-class v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->requestRebind(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public addNotiList(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add noti ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] currentNotiList ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiService"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "AddNotiList"

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sendNotiList(Ljava/lang/String;Ljava/util/List;)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public clearNotification(I)V
    .locals 7

    .line 19
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const-string v1, "NotiService"

    if-nez v0, :cond_0

    const-string p1, "sbn null"

    .line 20
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getSmsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 22
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 23
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 24
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 25
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->cancelNotification(Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelNotification "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public clearNotification(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "sms"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ddm"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "cmas"

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v0, 0x7b

    .line 14
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->clearNotification(I)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v0, 0x378

    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->clearNotification(I)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x41c

    .line 18
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->clearNotification(I)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public getNotiTypeFromId(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x378

    if-eq p1, v0, :cond_1

    const/16 v0, 0x41c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "cmas"

    goto :goto_0

    :cond_1
    const-string p1, "ddm"

    goto :goto_0

    :cond_2
    const-string p1, "sms"

    :goto_0
    return-object p1
.end method

.method public initNotiList()V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getSmsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_0

    .line 8
    sget-object v4, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    const-string v5, "sms"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v6, 0x41c

    if-ne v5, v6, :cond_1

    .line 10
    sget-object v4, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    const-string v5, "cmas"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v5, 0x378

    if-ne v4, v5, :cond_2

    .line 12
    sget-object v4, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    const-string v5, "ddm"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initNotiList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiService"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    const-string v1, "CurrentNotiList"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sendNotiList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onListenerConnected()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mContext:Landroid/content/Context;

    .line 3
    sput-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onListenerConnected sInstance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiService"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isNmsInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NMSServicestub is not initialized. called unbind"

    .line 6
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->unbind()V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SD do not sync notification"

    .line 9
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->unbind()V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcWatchActivated()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "watch is not enabled"

    .line 12
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->unbind()V

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->initNotiList()V

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    const-string v0, "NotiService"

    const-string v1, "onListenerDisconnected"

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    const-string v0, "NotiService"

    if-nez p1, :cond_0

    const-string p1, "sbn null"

    .line 1
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getSmsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationPosted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->getNotiTypeFromId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->addNotiList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    const-string v0, "NotiService"

    if-nez p1, :cond_0

    const-string p1, "sbn null"

    .line 1
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getSmsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationRemoved "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->getNotiTypeFromId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->removeNotiList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeNotiList(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove noti ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] currentNotiList ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiService"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getSmsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 6
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_0

    const-string v5, "sms"

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const/16 v7, 0x41c

    if-ne v6, v7, :cond_1

    const-string v5, "cmas"

    .line 11
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v6, 0x378

    if-ne v5, v6, :cond_2

    const-string v5, "ddm"

    .line 13
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->currentNotiList:Ljava/util/List;

    const-string v0, "CurrentNotiList"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sendNotiList(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public sendNotiList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 2
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "PostNotiRequest"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setAction(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setNotiList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isNmsInitialized()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    :cond_0
    const-string p1, "NotiService"

    const-string p2, "Nms Service is not initialized"

    .line 9
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unbind()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUnbind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiService"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->requestUnbind()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SecurityException"

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->sInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    return-void
.end method
