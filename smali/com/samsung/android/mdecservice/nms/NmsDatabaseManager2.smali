.class public Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
.super Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;
.source "NmsDatabaseManager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;,
        Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DatabaseMgr"

.field public static final MAXIMUM_PENDING_DDM_SIZE:I = 0x100

.field public static final REQUEST_TO_APP_RETRY_TIMEOUT:I = 0xea60

.field public static final REQUEST_TO_APP_TIMER_EXPIRED:I = 0x64

.field public static mChangedObjEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mPendingDdmObject:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAgentEventListeners:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

.field private mContactDbObserver:Landroid/database/ContentObserver;

.field private mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

.field private mMsgSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRetryObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/NmsClientManager;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/NmsClientManager;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    .line 3
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    .line 4
    new-instance p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$2;

    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$2;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mContactDbObserver:Landroid/database/ContentObserver;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    .line 7
    new-instance p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mMsgSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    .line 8
    new-instance p2, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Landroid/content/ContentResolver;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mAgentEventListeners:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    .line 9
    new-instance p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->getMessageAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->registerMessageAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->getRcsAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->registerRcsAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->getCallLogAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->registerCallLogAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->isUploadRequired(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private isUploadRequired(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\Pending"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xc8

    if-ne p3, p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v2

    const-string p1, "upload_status"

    const-string v0, "correlation_tag=?"

    invoke-virtual {p2, p1, v0, p3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributeFromBufferDB(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "upload_finished"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method


# virtual methods
.method public checkPendingDdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPendingDdm objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "unknown"

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getType()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "correlation_tag"

    .line 8
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "correlation_id"

    .line 9
    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "data_type"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getMessage()[B

    move-result-object v1

    const-string v4, "alert_message"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    const-string p2, "insert"

    .line 13
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public checkPendingRcsDdm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "correlation_id"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "correlation_tag"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "DatabaseMgr"

    const-string v1, "incorrect response from app"

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    const-string v3, "res_url"

    invoke-virtual {v2, v3, v1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->checkPendingDdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    const-string v1, "rcs"

    const-string v3, "Inserted"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public composeContentValuesFromGettingData(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "\\Recent"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "read"

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getSdSimIndex()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim_slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getCommaSeparatedNumbers(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_to"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFrom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_from"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "correlation_tag"

    .line 9
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMessageID()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v1, "correlation_id"

    if-nez p3, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMessageID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p3, "object_id"

    .line 13
    invoke-virtual {v0, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "res_url"

    .line 14
    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object p3

    const-string p4, "date_formated"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "date"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "\\Failed"

    .line 17
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "sync_status"

    if-eqz p1, :cond_2

    const-string p1, "Failed"

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "Inserting"

    .line 19
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p7, :cond_3

    .line 20
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "lastmodseq"

    .line 21
    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method protected deinitMessageSync()V
    .locals 3

    const-string v0, "DatabaseMgr"

    const-string v1, "deinitMessageSync:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mMsgSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mContactDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleInitOrDeinit()V

    .line 5
    invoke-super {p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->deinitMessageSync()V

    return-void
.end method

.method public getAllCif()V
    .locals 3

    const-string v0, "DatabaseMgr"

    const-string v1, "getAllCif:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "M0003_CHAT_BOT not satisfied"

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    const-string v2, "eventTypeServer"

    .line 5
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    const-string v2, "SearchCifRequest"

    .line 6
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    const-string v2, ""

    .line 7
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public getCallLogAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mAgentEventListeners:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->getCallLogAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getMessageAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mAgentEventListeners:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->getMessageAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetting()V
    .locals 3

    const-string v0, "DatabaseMgr"

    const-string v1, "getMessageSetting"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "GetMsgAppSettingRequest"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/16 v2, 0x12d

    .line 7
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getRcsAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$6;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;)V

    return-object v0
.end method

.method public getRcsCapability(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsCapability() numberList size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 6
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "number"

    .line 9
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "sip"

    .line 10
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRcsCapability() bot uri : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    const-string v8, "[^0-9]"

    const-string v9, ""

    .line 13
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_2

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRcsCapability() invalid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getLimitLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRcsCapability() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getLimitLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v8, v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getRcsCapability(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 19
    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v6

    const-string v9, "is_available"

    invoke-virtual {v7, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v9

    const-string v6, "features"

    invoke-virtual {v7, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRcsCapability() isAvailable="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", features="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_1
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 24
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {p1, v2, v4}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendCheckRequest(Ljava/util/List;Z)V

    .line 26
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendCheckRequest(Ljava/util/List;Z)V

    :cond_6
    return-object v0
.end method

.method public handleCompletedPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCompletedPushEventFromApp: transactionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bulkData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v4, "result"

    .line 4
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    .line 5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->getRetryNumber()I

    move-result v0

    sub-int/2addr v0, v3

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->access$002(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;I)I

    if-lez v0, :cond_3

    .line 10
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$5;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-wide/16 p1, 0xbb8

    invoke-virtual {p4, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez v1, :cond_4

    .line 12
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleSuccessPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method protected handleDBSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "insert"

    const-string v2, "sync_status"

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->handleDBSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eventTypeMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventTo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", EventType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", requestReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DatabaseMgr"

    .line 5
    invoke-static {v4, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CurrentNotiPushReceived"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->getInstance()Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 8
    move-object/from16 v2, p1

    check-cast v2, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    .line 9
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getNotiList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->clearNotification(Ljava/util/List;)V

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DdmMsgPushReceived"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v8, "correlation_id"

    const-string v9, "correlation_tag"

    if-eqz v3, :cond_5

    .line 11
    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    .line 12
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getResourceUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12

    const/4 v10, 0x0

    .line 13
    :try_start_0
    iget-object v11, v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    filled-new-array {v9, v8, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "res_url=?"

    new-array v15, v5, [Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getResourceUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v6

    const/16 v16, 0x0

    .line 15
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 17
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 18
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v2, v10

    move-object v6, v2

    .line 20
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syncStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", coId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", coTag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "Inserting"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rcs_revoke"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v0, "handle pending ddm object"

    .line 22
    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;-><init>()V

    .line 24
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->setDdmType(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmMsg()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->setDdmMsg([B)V

    .line 26
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->setDdmResourceURL(Ljava/lang/String;)V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPendingDdmObject size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getResourceURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add new pending ddm object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v6, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 31
    sget-object v6, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_1

    .line 32
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :goto_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mPendingDdmObject:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pending ddm list "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v10, "data_type"

    .line 37
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alert_message"

    .line 40
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmMsg()[B

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0, v7}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6, v0, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    .line 46
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v5

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 47
    :goto_3
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    .line 48
    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 49
    throw v0

    .line 50
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UpdateRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "correlationId"

    const-string v3, "correlationTag"

    const-string v10, "resourceURL"

    if-eqz v0, :cond_10

    .line 51
    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 52
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\Delivered"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "date"

    if-eqz v2, :cond_7

    .line 57
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "PD doesn\'t handle Delivered Update"

    .line 58
    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMessageID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "messageId"

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v11, v5}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleRelayResult(Landroid/os/Bundle;I)V

    return-void

    .line 62
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\Failed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 63
    invoke-virtual {v1, v11, v6}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleRelayResult(Landroid/os/Bundle;I)V

    return-void

    .line 64
    :cond_8
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v2, v11}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object v10, v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateBufferDB(Landroid/os/Bundle;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Ljava/lang/String;

    move-result-object v10

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    if-eqz v10, :cond_12

    .line 70
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {v6, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBoxType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBoxType()Ljava/lang/String;

    move-result-object v3

    const-string v8, "message_box_type"

    .line 78
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFrom()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "recipientslist"

    .line 82
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    :cond_b
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getSdSimIndex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getSdSimIndex()Ljava/lang/String;

    move-result-object v3

    const-string v8, "sim_slot"

    .line 85
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_c
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getReadMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getReadMsg()Ljava/lang/String;

    move-result-object v3

    const-string v8, "is_read"

    .line 88
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_d
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v8, "content_type"

    .line 91
    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_e
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v0

    const-string v3, "txtcontent"

    .line 94
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v0, "bufferdbid"

    .line 95
    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "update"

    .line 97
    invoke-virtual {v1, v4, v2, v0, v7}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 99
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DeleteRequest"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 100
    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 101
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v2, v4}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "delete"

    .line 111
    invoke-virtual {v1, v3, v2, v0, v7}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 113
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eventTypeRcs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    :cond_12
    :goto_4
    return-void
.end method

.method protected handleDBSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->handleDBSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    const-string v1, "DatabaseMgr"

    const-string v2, "handleSyncEventList[<--]:"

    .line 2
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getEventType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "eventTypeMessage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 8
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x17c3bd66

    if-eq v10, v11, :cond_1

    const v11, 0x64b98e44

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "DeleteRequest"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v8

    goto :goto_2

    :cond_1
    const-string v10, "UpdateRequest"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, -0x1

    :goto_2
    if-eqz v9, :cond_4

    if-eq v9, v8, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    check-cast v5, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_4
    check-cast v5, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const-string v13, "update"

    const-string v14, "delete"

    if-lez v12, :cond_6

    move-object v3, v4

    move-object v1, v14

    goto :goto_3

    .line 17
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_16

    move-object v1, v13

    .line 18
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v12, "cb"

    const-string v15, "mms_noti"

    const-string v6, "wap"

    const-string v7, "mms"

    const-string v8, "sms"

    move-object/from16 v16, v2

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 19
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v3

    .line 20
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v5

    .line 21
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v10

    .line 22
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v20, v11

    const-string v11, "resourceURL"

    .line 23
    invoke-virtual {v10, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "correlationTag"

    .line 24
    invoke-virtual {v10, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "correlationId"

    .line 25
    invoke-virtual {v10, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v22, v14

    const-string v14, "correlation_id"

    move-object/from16 v23, v9

    const-string v9, "correlation_tag"

    if-eqz v21, :cond_7

    .line 28
    invoke-virtual {v11, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v11, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 30
    :cond_7
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v13

    .line 31
    iget-object v13, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v4

    invoke-virtual {v13, v10, v4}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateBufferDB(Landroid/os/Bundle;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v11, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v11, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferdbid"

    .line 37
    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v21, v13

    .line 38
    :cond_9
    :goto_6
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v2, v10}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v5

    goto :goto_8

    :sswitch_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_8

    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :sswitch_3
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    goto :goto_8

    :sswitch_4
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v2, -0x1

    :goto_8
    if-eqz v2, :cond_f

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    if-eq v2, v5, :cond_d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_c

    if-eq v2, v4, :cond_b

    move-object/from16 v10, v16

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v23

    goto :goto_9

    :cond_b
    move-object/from16 v2, v23

    .line 40
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v16

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto :goto_9

    :cond_c
    move-object/from16 v4, v20

    move-object/from16 v2, v23

    .line 41
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v16

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    goto :goto_9

    :cond_d
    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v23

    .line 42
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v16

    move-object/from16 v9, v18

    goto :goto_9

    :cond_e
    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v23

    .line 43
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v16

    goto :goto_9

    :cond_f
    move-object/from16 v10, v16

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v23

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    move v8, v3

    move-object v11, v4

    move-object/from16 v3, v17

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v24, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_4

    :cond_10
    move-object v2, v9

    move-object v4, v11

    move-object v9, v5

    move-object v5, v10

    move-object/from16 v10, v16

    .line 45
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v3, 0x3

    .line 46
    invoke-virtual {v0, v10, v8, v1, v3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 47
    invoke-virtual {v0, v11, v8, v1, v10}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_a

    :cond_11
    const/4 v3, 0x3

    .line 48
    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_12

    .line 49
    invoke-virtual {v0, v9, v7, v1, v3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-virtual {v0, v8, v7, v1, v9}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_13

    .line 52
    invoke-virtual {v0, v5, v6, v1, v3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {v0, v7, v6, v1, v5}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 55
    invoke-virtual {v0, v4, v12, v1, v3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v0, v5, v12, v1, v4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 58
    invoke-virtual {v0, v2, v15, v1, v3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v0, v3, v15, v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_15
    return-void

    :cond_16
    const-string v2, "No proper Sync Events"

    .line 60
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x756cf21e -> :sswitch_4
        0xc5f -> :sswitch_3
        0x1a6d3 -> :sswitch_2
        0x1bd59 -> :sswitch_1
        0x1cae6 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleFailPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFailPushEventFromApp: dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->access$000(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 p3, 0xea60

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleGroupStateMsg(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->handleGroupStateMsg(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->handleMessage(Landroid/os/Message;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->getMsgName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DatabaseMgr"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleRelayDataObj(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->handleRelayDataObject(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V

    return-void
.end method

.method public handleRelayRequestObj(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getContactList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleRelayRequest(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$3;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public handleRelayResponseObj(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->getContactList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleRelayResponse(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$4;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public handleRelayResult(Landroid/os/Bundle;I)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Relayed Result, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "resourceURL"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "correlationTag"

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "date"

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "messageId"

    .line 6
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v7, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_0

    const-string p1, "uri is null cannot complete update request action"

    .line 9
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {v9, v8, v7, p1, p2}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->notifySendRelayResult(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;I)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 13
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v7, v10}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->checkPendingDdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz p1, :cond_2

    const-string p1, "relay object didn\'t get resourceURL"

    .line 15
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v9, [Ljava/lang/String;

    aput-object v3, p1, v7

    .line 16
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "correlation_tag=?"

    invoke-virtual {p2, v8, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleted rows = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne p2, v9, :cond_3

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update Date : "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Update message_id : "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "date_formated"

    .line 20
    invoke-virtual {v0, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-ne p2, v9, :cond_4

    const-string p1, "Delivered"

    goto :goto_1

    :cond_4
    const-string p1, "Failed"

    :goto_1
    const-string p2, "sync_status"

    .line 21
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "res_url"

    .line 22
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    aput-object v2, p2, v7

    aput-object v3, p2, v9

    const-string v3, "res_url=? OR correlation_tag=?"

    invoke-virtual {p1, v8, v0, v3, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 24
    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updated rows = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public handleSuccessPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSuccessPushEventFromApp: dataType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requestType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", successList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DatabaseMgr"

    invoke-static {v5, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 6
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "correlation_id"

    const-string v13, "cif"

    const-string v14, "mms"

    if-ge v10, v11, :cond_3

    .line 7
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 8
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    const-string v12, "service_id"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    const-string v13, "correlation_tag"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 11
    :goto_1
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 13
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    const-string v12, "bufferdbid"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 14
    invoke-static {v11}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 15
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_19

    .line 17
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "mms_noti"

    if-nez v10, :cond_4

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 18
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_c

    :cond_5
    const-string v10, "sms"

    .line 19
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v9, "update"

    move-object/from16 v17, v10

    const-string v10, "insert"

    move-object/from16 v18, v8

    const-string v8, "correlation_tag in ("

    const/16 v19, 0x0

    move-object/from16 v20, v4

    const-string v4, "?)"

    move-object/from16 v21, v12

    const-string v12, "?,"

    move-object/from16 v22, v8

    const-string v8, "\u0000"

    move-object/from16 v23, v7

    const/4 v7, 0x1

    if-nez v15, :cond_d

    const-string v15, "wap"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto/16 :goto_3

    .line 20
    :cond_6
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_7
    const-string v11, "rcs"

    .line 21
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 22
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 23
    :cond_8
    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->checkPendingRcsDdm(Ljava/util/List;)V

    return-void

    .line 24
    :cond_9
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "service_id in ("

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v7

    new-array v15, v15, [C

    invoke-direct {v11, v15}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 26
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v6, v3

    move-object/from16 v22, v14

    goto/16 :goto_5

    .line 27
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isDdmMsg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "Don\'t need to update status in case of ddm msg."

    .line 28
    invoke-static {v5, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    move-object/from16 v22, v14

    move-object/from16 v3, v19

    move-object v6, v3

    goto/16 :goto_6

    :cond_c
    :goto_2
    move-object/from16 v3, v23

    .line 29
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v22

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v22, v14

    add-int/lit8 v14, v19, -0x1

    new-array v14, v14, [C

    invoke-direct {v15, v14}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v15, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "?) OR "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v21

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " in ("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/String;

    .line 32
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    new-array v6, v6, [C

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v14, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_4

    :cond_d
    :goto_3
    move-object/from16 v15, v22

    move-object/from16 v22, v14

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    new-array v14, v14, [C

    invoke-direct {v11, v14}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    :goto_4
    move-object v6, v3

    :goto_5
    move-object/from16 v3, v19

    .line 36
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0x4f997a55

    const/4 v11, 0x2

    if-eq v14, v15, :cond_10

    const v15, -0x468f3d47

    if-eq v14, v15, :cond_f

    const v10, -0x31ffc737    # -5.3780128E8f

    if-eq v14, v10, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v9, v11

    goto :goto_8

    :cond_f
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v9, 0x0

    goto :goto_8

    :cond_10
    const-string v9, "delete"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v9, v7

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v9, -0x1

    :goto_8
    const-string v2, "sync_status"

    if-eqz v9, :cond_15

    if-eq v9, v7, :cond_14

    if-eq v9, v11, :cond_12

    const-string v1, "unhandled requestType!"

    .line 37
    invoke-static {v5, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 38
    :cond_12
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "read"

    const-string v5, "1"

    move-object/from16 v9, v20

    .line 39
    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    move-object/from16 v9, v20

    :goto_9
    const-string v4, "Updated"

    .line 40
    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v9, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_b

    .line 42
    :cond_14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 43
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_15
    move-object/from16 v9, v20

    move-object/from16 v10, v22

    .line 44
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, " is NOT \""

    const-string v13, ") AND "

    const-string v14, "("

    if-eqz v10, :cond_16

    .line 45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "message_id in ("

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/String;

    .line 46
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v7, v16, -0x1

    new-array v7, v7, [C

    invoke-direct {v15, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v15, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move-object/from16 v8, v18

    invoke-interface {v8, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 48
    iget-object v8, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "mmspartmessage"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 50
    invoke-virtual {v8, v10, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deletedRows = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_16
    move-object/from16 v4, v17

    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_17
    :goto_a
    const-string v4, "Inserted"

    .line 55
    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v9, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_18
    :goto_b
    return-void

    :cond_19
    :goto_c
    const-string v1, "Invalid operation"

    .line 57
    invoke-static {v5, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initMessageSync()V
    .locals 4

    const-string v0, "DatabaseMgr"

    const-string v1, "initMessageSync:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mMsgSubListener:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    sget-object v2, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mContactDbObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleInitOrDeinit()V

    .line 5
    invoke-super {p0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->initMessageSync()V

    return-void
.end method

.method public makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makePendingObject: retryNumber ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, v0

    move v6, p4

    move-object v7, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Landroid/os/Looper;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$1;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mRetryObject:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x64

    .line 6
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 p2, 0xea60

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object v0
.end method

.method public notifyRcsCapabilityChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "number"

    .line 6
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v2

    const-string v4, "is_available"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v1

    const-string v4, "features"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRcsCapabilityChanged() bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatabaseMgr"

    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRelayManager:Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->notifyRcsCapabilityChanged(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onImsDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    const-string v0, "DatabaseMgr"

    const-string v1, "onImsDeregistered:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->setRcsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onImsRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    const-string v0, "DatabaseMgr"

    const-string v1, "onImsRegistered:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->setRcsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onReceivingPayloadNotify(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivingPayloadNotify: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uploadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " correlationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->handlePayloadNotify(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeChangedObjEvent(Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChangedObjEvent , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Implement Pending Update"

    .line 4
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "resourceURL"

    .line 7
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateBufferDB(Landroid/os/Bundle;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v2

    const-string v7, "correlation_tag"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "correlation_id"

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bufferdbid"

    .line 16
    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    const-string v2, "update"

    .line 18
    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v0, "remove resourceURL"

    .line 20
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->mChangedObjEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public sendBroadcastMsgSettingToApp(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DatabaseMgr"

    const-string v1, "sendBroadcastMsgSettingToApp:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mdecservice.CMC_MSG_SETTING_RECEIVED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_settings"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x1000020

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsIntents;->PERMISSION_SEM_CMC_PUSH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcastToApp: transactionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bulkData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.mdecservice.CMC_SEND_RCS"

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.mdecservice.CMC_PUSH_RECEIVED"

    .line 3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "transaction_id"

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data_type"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "request_type"

    .line 7
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "bulk_data"

    .line 8
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-lez p4, :cond_1

    const-string p1, "retry_count"

    .line 9
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const p1, 0x1000020

    .line 10
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    sget-object p3, Lcom/samsung/android/mdecservice/nms/constants/NmsIntents;->PERMISSION_SEM_CMC_PUSH:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method

.method public sendMessageSetting(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DatabaseMgr"

    const-string v1, "sendMessageSetting"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "PostMsgAppSettingRequest"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setMsgAppSetting(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/16 v1, 0x12d

    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageSettingExt(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DatabaseMgr"

    const-string v1, "sendMessageSettingExt"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "PostMsgAppSettingExtRequest"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setMsgAppSetting(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    const/16 v1, 0x12d

    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
