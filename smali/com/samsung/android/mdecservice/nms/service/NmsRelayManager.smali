.class public Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;
.super Ljava/lang/Object;
.source "NmsRelayManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NmsRelayManager"


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/cmcopenapi/INmsServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    .line 3
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbackLock:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public checkIfMessageResend(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p3, v4, p1

    const-string v3, "correlation_tag=?"

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Not recommend to query with null projection. Null Projection Query is too inefficient."

    invoke-static {p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 8
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p3

    :cond_3
    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p2

    :catchall_0
    move-exception p2

    .line 14
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p1, :cond_5

    .line 15
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p3
.end method

.method public notifyRcsCapabilityChanged(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    invoke-interface {v3, p1}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRcsCapabilityChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 4
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public notifyRelayRcsResult(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    invoke-interface {v3, p1}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRelayRcsCompleted(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 4
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public notifyRelayResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRelayCompleted(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 4
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public notifySendRelayResult(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "_bufferdbid"

    const-string v3, "_id"

    const-string v4, "correlation_tag"

    const-string v5, "resourceURL"

    .line 1
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "correlationTag"

    .line 2
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "date"

    .line 3
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "messageId"

    .line 4
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    new-array v8, v10, [Ljava/lang/String;

    aput-object v6, v8, v9

    const-string v6, "correlation_tag=?"

    goto :goto_0

    :cond_0
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    const-string v6, "res_url=?"

    :goto_0
    move-object v12, v6

    move-object v13, v8

    .line 6
    :try_start_0
    iget-object v9, v1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    filled-new-array {v3, v2, v4}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_2

    .line 7
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 10
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 11
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 13
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 14
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 15
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 16
    sget-object v14, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TpRowID : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", bufferdbID : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", correlation_tag : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v14, "rowid"

    .line 18
    invoke-virtual {v6, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "bufferdbid"

    .line 19
    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "data_type"

    move-object/from16 v12, p2

    .line 20
    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "message_id"

    .line 21
    invoke-virtual {v6, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "failure_reason"

    const/4 v14, -0x1

    .line 22
    invoke-virtual {v6, v11, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v6, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "result"

    move/from16 v14, p4

    .line 24
    invoke-virtual {v6, v11, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_1
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->notifyRelayResult(Ljava/util/List;Ljava/lang/String;)V

    .line 28
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 30
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v10

    :catchall_0
    move-exception v0

    move-object v6, v8

    goto :goto_2

    :cond_2
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move-object v6, v2

    :goto_2
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 31
    throw v0
.end method

.method public notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRequestToServerCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 4
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v3, "rcs"

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid relay request"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>()V

    invoke-virtual {v6, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/BundleHelper;->getMessageContext(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "post"

    .line 7
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->getRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>()V

    invoke-virtual {v6, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->prepare(Ljava/util/List;)V

    return-void
.end method

.method public sendrelayMMS(Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "relayMMSInfo is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_a

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "correlation_tag"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v5, "txtcontent"

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v8, "subject"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "res_url"

    const-string v9, "date_formated"

    .line 7
    filled-new-array {v8, v6, v9}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "mms"

    invoke-virtual {v0, v11, v10, v7}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->checkIfMessageResend(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 8
    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v12

    const-string v13, "\\Pending"

    const-string v14, "eventTypeServer"

    const-string v15, "rowid"

    const-string v4, "date"

    if-nez v12, :cond_3

    .line 9
    sget-object v12, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v17, v5

    const-string v5, "resendCases"

    invoke-static {v12, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 11
    invoke-virtual {v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual {v5, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v0, v11, v7, v8}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->updateTelephonyIDForReSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    .line 16
    sget-object v2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "resendCases, Update to Server as PENDING."

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v4, "update"

    .line 18
    invoke-static {v2, v11, v4, v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseMmsSmsRelayAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v14}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    const-string v2, "UpdateRequest"

    .line 24
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v13}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    .line 28
    :cond_2
    sget-object v5, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Post to Server previous same object again to get resourceURL"

    invoke-static {v5, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v17, v5

    move/from16 v16, v3

    :goto_0
    if-nez v16, :cond_5

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 32
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_id"

    .line 34
    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "m_type"

    const-string v8, "OUT"

    .line 35
    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_from"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v8, "recipientslist"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 38
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 39
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getCommaSeparatedNumbers(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_to"

    .line 40
    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_4
    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "mmsmessage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 43
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_7

    move v5, v3

    .line 44
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 45
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v8, "contenttype"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "application/smil"

    .line 46
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 47
    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    .line 48
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    const-string v10, "uri"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 49
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/mdecservice/nms/util/FileUtil;->byteFromUri(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v7

    .line 50
    new-instance v9, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    invoke-direct {v9}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;-><init>()V

    .line 51
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52
    invoke-virtual {v9, v10}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setContentType(Ljava/lang/String;)V

    .line 53
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "filename"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-virtual {v9, v10}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setFileName(Ljava/lang/String;)V

    .line 55
    sget-object v10, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentType : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", filename : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v10, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v9, v7}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setBinaryContent([B)V

    .line 59
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_7
    move v2, v3

    .line 60
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 61
    new-instance v3, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    invoke-direct {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;-><init>()V

    const-string v7, "text/plain"

    .line 62
    invoke-virtual {v3, v7}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setContentType(Ljava/lang/String;)V

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 65
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setBinaryContent([B)V

    .line 66
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_8
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v5, "post"

    .line 68
    invoke-static {v2, v11, v5, v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseMmsSmsRelayAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 69
    sget-object v3, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v14}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    const-string v5, "PostMmsRequest"

    .line 72
    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v13}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 74
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setPayLoadInfos(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v3, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 79
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    .line 80
    :cond_9
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "msgAttr is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_a
    :goto_2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "relayMMSInfo/payLoadInfoList or correlationTag is empty/null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendrelaySMS(Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, " sendrelaySMS : "

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "relaySMSInfo is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_8

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "correlation_tag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "res_url"

    const-string v7, "date_formated"

    .line 7
    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "sms"

    invoke-virtual {v0, v9, v8, v4}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->checkIfMessageResend(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 8
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v10

    const-string v11, "\\Pending"

    const-string v12, "eventTypeServer"

    const-string v13, "rowid"

    const-string v14, "date"

    if-nez v10, :cond_3

    .line 9
    sget-object v10, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v15, "resendCases"

    invoke-static {v10, v15}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 11
    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual {v10, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v0, v9, v4, v8}, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->updateTelephonyIDForReSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    .line 16
    sget-object v2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Update to Server as PENDING."

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v5, "update"

    .line 18
    invoke-static {v2, v9, v5, v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseMmsSmsRelayAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v12}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    const-string v2, "UpdateRequest"

    .line 24
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v11}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    .line 28
    :cond_2
    sget-object v6, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Post to Server previous same object again to get resourceURL"

    invoke-static {v6, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    goto :goto_0

    :cond_3
    move v6, v2

    :goto_0
    if-nez v6, :cond_6

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    const-string v10, "recipientslist"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 33
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 34
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-string v15, "smsmessages"

    const-string v2, "/"

    const-string v3, "1"

    move-object/from16 v17, v11

    const-string v11, "read"

    move-object/from16 v18, v12

    const-string v12, "txtcontent"

    move-object/from16 v19, v9

    const-string v9, "body"

    move-object/from16 v20, v4

    const-string v4, "address"

    move-object/from16 v21, v15

    const-string v15, "_id"

    move-object/from16 v22, v2

    const-string v2, "OUT"

    const-string v0, "type"

    move-object/from16 v23, v6

    const-string v6, "thread_id"

    move-object/from16 v24, v7

    const/4 v7, 0x1

    if-le v14, v7, :cond_4

    const/4 v7, 0x0

    .line 35
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_5

    .line 36
    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 37
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v0, "group_id"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 38
    invoke-virtual {v13, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v13, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual {v14, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 42
    invoke-virtual {v13, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v13, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 45
    invoke-virtual {v13, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual {v14, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v13, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v14, v24

    .line 48
    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, v25

    move-object/from16 v0, p0

    move-object/from16 v25, v5

    .line 49
    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v6

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v7, v7, 0x1

    move-object v0, v14

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    goto/16 :goto_1

    :cond_4
    move-object v14, v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    .line 50
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 51
    invoke-virtual {v13, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v13, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v13, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v13, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v2, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v2, v25

    .line 59
    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    .line 60
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 61
    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v0, v20

    goto :goto_2

    :cond_6
    move-object v2, v0

    move-object v0, v4

    move-object/from16 v19, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    .line 62
    :goto_2
    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v5, "post"

    move-object/from16 v6, v19

    invoke-static {v3, v6, v5, v1, v4}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseMmsSmsRelayAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 63
    sget-object v3, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    move-object/from16 v4, v18

    .line 65
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    const-string v4, "PostRequest"

    .line 66
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    move-object/from16 v4, v17

    .line 67
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v0

    .line 71
    iget-object v1, v2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    .line 72
    :cond_7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "msgAttr is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_3
    move-object v2, v0

    .line 73
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "relaySMSInfo or correlationTAG is empty/null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public updateTelephonyIDForReSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    .line 2
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "correlation_tag=?"

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 4
    sget-object p2, Lcom/samsung/android/mdecservice/nms/service/NmsRelayManager;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update success rows = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method
