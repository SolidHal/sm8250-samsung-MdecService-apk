.class public Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseRequest"


# instance fields
.field private final isRelay:Z

.field protected final mClient:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

.field private final mRequestType:Ljava/lang/String;

.field protected mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

.field private mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

.field private final mTid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "requestType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mTid:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mClient:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 6
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    .line 7
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mRequestType:Ljava/lang/String;

    .line 8
    iput-boolean p6, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    return-void
.end method

.method private getTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mTid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected addEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mRequestType:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncEvent()Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    return-object v0
.end method

.method getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 2
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "correlation_id"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "correlation_tag"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    return-object v0
.end method

.method protected getSyncEventDelete(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSyncEventPost(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSyncEventUpdate(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSyncList()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isRelay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay:Z

    return v0
.end method

.method protected isValidServerRequest(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public prepare(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v1, "eventTypeServer"

    const-string v2, "eventTypeRcs"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getTid()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mRequestType:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay:Z

    const-string v6, "rcs"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    const-class v4, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    invoke-virtual {p0, v3}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isValidServerRequest(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    sget-object v4, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "invalid server request"

    invoke-static {v4, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v4, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    const/16 v5, 0x2bc

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->prepareSyncEvent(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 12
    iget v5, v4, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {p0, v5}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->addEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->writeToBuffer(Ljava/util/List;)V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->getSyncErrorsCount()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->sendFailureResultToApp()V

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->clearSyncErrors()V

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mClient:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_6
    return-void
.end method

.method public prepareSyncEvent(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mRequestType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4f997a55

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x31ffc737    # -5.3780128E8f

    if-eq v1, v2, :cond_1

    const v2, 0x3498a0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventDelete(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventUpdate(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventPost(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1
.end method

.method protected writeToBuffer(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
