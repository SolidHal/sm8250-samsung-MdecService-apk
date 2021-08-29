.class public Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;
.super Ljava/lang/Object;
.source "LostPushDetector.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "LostPushDetector"

.field private static final PREF_KEY_DATE:Ljava/lang/String; = "date"

.field private static final PREF_KEY_DATE_GIO:Ljava/lang/String; = "date_gio"

.field private static final PREF_KEY_DATE_RELAY_DATA:Ljava/lang/String; = "date_relay_data"

.field private static final PREF_KEY_INDEX:Ljava/lang/String; = "index"

.field private static final PREF_PUSH_CALLLOG:Ljava/lang/String; = "NMS_push_calllog"

.field private static final PREF_PUSH_MESSAGE:Ljava/lang/String; = "NMS_push_message"

.field private static mSpPushCalllog:Landroid/content/SharedPreferences;

.field private static mSpPushMsg:Landroid/content/SharedPreferences;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mOngoingSearch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const-string p2, "NMS_push_message"

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mSpPushMsg:Landroid/content/SharedPreferences;

    const-string p2, "NMS_push_calllog"

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mSpPushCalllog:Landroid/content/SharedPreferences;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mOngoingSearch:Ljava/util/List;

    return-void
.end method

.method private static getLastReceivedGioPushTime()Ljava/lang/String;
    .locals 3

    const-string v0, "eventTypeMessage"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "date_gio"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastReceivedPushIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "index"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static getLastReceivedPushTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "date"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLastReceivedRelayDataPushTime()Ljava/lang/String;
    .locals 3

    const-string v0, "eventTypeMessage"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "date_relay_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "eventTypeMessage"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mSpPushMsg:Landroid/content/SharedPreferences;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mSpPushCalllog:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private declared-synchronized isSearchOngoing(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchOngoing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mOngoingSearch:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mOngoingSearch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized markSearchOngoing(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markSearchOngoing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mOngoingSearch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public isGioPushHistoryExist()Z
    .locals 2

    const-string v0, "eventTypeMessage"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "date_gio"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPushHistoryExist(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "index"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "date"

    .line 2
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRelayDataPushHistoryExist()Z
    .locals 2

    const-string v0, "eventTypeMessage"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "date_relay_data"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public makeGioSearchOperation()V
    .locals 5

    const-string v0, "SearchGroupInfoRequest"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isSearchOngoing(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->markSearchOngoing(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getLastReceivedGioPushTime()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v3

    const-string v4, "eventTypeServer"

    .line 5
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 9
    invoke-interface {v2, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_0
    return-void
.end method

.method public makeRelayDataSearchOperation()V
    .locals 5

    const-string v0, "SearchRelayDataRequest"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isSearchOngoing(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getLastReceivedRelayDataPushTime()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeRelayDataSearchOperation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->markSearchOngoing(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v3

    const-string v4, "eventTypeServer"

    .line 6
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 10
    invoke-interface {v2, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_0
    return-void
.end method

.method public makeSearchOperation(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeSearchOperation: callbackData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getLastReceivedPushTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No need to search"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "eventTypeMessage"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "SearchRequest"

    const-string v2, "eventTypeServer"

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 11
    invoke-interface {p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    const-string p1, "SearchGroupInfoRequest"

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isSearchOngoing(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->markSearchOngoing(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v3

    .line 16
    invoke-virtual {v3, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object p1

    .line 19
    invoke-interface {v1, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 20
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SearchRelayDataRequest"

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isSearchOngoing(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->markSearchOngoing(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v2

    .line 25
    invoke-virtual {v2, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object p1

    .line 28
    invoke-interface {v1, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 29
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    const-string v2, "SearchCifRequest"

    .line 32
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    move-result-object v0

    .line 35
    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mNmsClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object v0

    .line 41
    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public declared-synchronized markSearchCompleted(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markSearchCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mOngoingSearch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordPushHistory(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getLastReceivedPushIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordPushHistory: callBackData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", date="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", newIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v3, "MdecService"

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v3, 0x2710

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setMessageSentDBwrite(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setEventType(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->writeResult(Z)V

    .line 14
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isPushHistoryExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "index broke"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->makeSearchOperation(Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "index"

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "date"

    .line 19
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_4
    :goto_0
    :try_start_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid data"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordPushHistoryForGio(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "eventTypeMessage"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "date_gio"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordPushHistoryForRelayData(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "eventTypeMessage"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "date_relay_data"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetPushHistory(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetPushHistory:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->isPushHistoryExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->getSpByType(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "index"

    .line 5
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "date"

    .line 6
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/push/LostPushDetector;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No history"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
