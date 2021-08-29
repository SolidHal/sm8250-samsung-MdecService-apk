.class public Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;
.super Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;
.source "UpdateRequestObject.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UpdateRequestObj"

.field private static final PROJECTION_FOR_UPDATE:[Ljava/lang/String;

.field private static mColumnNameTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

.field private mUpdatedRequestedList:Ljava/util/List;
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
    .locals 4

    const-string v0, "res_url"

    const-string v1, "date"

    const-string v2, "correlation_tag"

    const-string v3, "correlation_id"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->PROJECTION_FOR_UPDATE:[Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->createMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mColumnNameTranslator:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;",
            "Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mUpdatedRequestedList:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string p2, "eventTypeServer"

    const-string p3, "eventTypeMessage"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    return-void
.end method

.method private classifyUpdateList(Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->checkProperListFromApp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "object_id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "update_column_list_messages"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "update_column_list_parts"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "identifier"

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "objectID"

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-gtz p3, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 13
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->makeReplaceBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static createMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "created_timestamp"

    const-string v2, "date"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_read"

    const-string v2, "read"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "text"

    const-string v2, "body"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private makeReplaceBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 14

    const-string v0, "update_column_list_messages"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "update_column_list_parts"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "correlation_tag"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "correlation_id"

    .line 4
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "mms_message_id"

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 6
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 7
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v4

    :cond_2
    const-string v3, "_id"

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "message_box_type"

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v4, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 11
    sget-object v9, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MSG_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    move-object v7, v4

    move-object v8, p1

    .line 13
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryReplaceDB(Landroid/os/Bundle;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->PARTS_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    .line 16
    invoke-static {v3, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    .line 18
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryReplaceDB(Landroid/os/Bundle;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    move-object v8, p1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string p1, "res_url"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v0, [Ljava/lang/String;

    aput-object v5, v12, v13

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryReplaceDB(Landroid/os/Bundle;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private makeSyncEvent(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "res_url"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->PROJECTION_FOR_UPDATE:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    .line 3
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "correlation_tag"

    .line 6
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 7
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "correlation_id"

    .line 8
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 9
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    if-eqz p5, :cond_1

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v3

    const-string v4, "date"

    .line 13
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 14
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    :cond_1
    const-string v3, "eventTypeServer"

    .line 19
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 20
    invoke-virtual {v3, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    if-eqz p5, :cond_2

    const-string v4, "\\Delivered"

    goto :goto_1

    :cond_2
    const-string v4, "\\Seen"

    .line 21
    :goto_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 22
    invoke-virtual {v3, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    .line 26
    new-instance p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 27
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Updating"

    invoke-virtual {p1, v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mUpdatedRequestedList:Ljava/util/List;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, p3

    :goto_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 30
    :cond_4
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 31
    throw p1
.end method

.method private makeSyncEventForReplace(Ljava/util/List;Ljava/lang/String;)V
    .locals 17
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

    move-object/from16 v0, p0

    const-string v1, "UpdateRequestObj"

    const-string v2, "makeSyncEventForReplace"

    .line 1
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "update_column_list_messages"

    .line 3
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "res_url"

    .line 4
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "resourceURL is null"

    .line 6
    invoke-static {v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v6, "correlation_tag"

    .line 7
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "correlation_id"

    .line 8
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "is_read"

    .line 9
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "message_box_type"

    .line 10
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "1"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "\\Seen"

    goto :goto_1

    :cond_1
    const-string v11, "\\Recent"

    .line 12
    :goto_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v12

    .line 13
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v13

    const-string v14, "recipients"

    .line 14
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v16, v1

    const/4 v1, 0x0

    if-eqz v15, :cond_4

    const/16 v15, 0x65

    if-eq v10, v15, :cond_3

    const/16 v15, 0x66

    if-ne v10, v15, :cond_2

    goto :goto_2

    :cond_2
    const/16 v15, 0x64

    if-ne v10, v15, :cond_4

    .line 15
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v13, v10}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    goto :goto_3

    .line 16
    :cond_3
    :goto_2
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v13, v10}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setTo(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 17
    :cond_4
    :goto_3
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setBoxType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    :cond_5
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v13, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v9

    const-string v10, "created_timestamp"

    .line 20
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-virtual {v9, v10}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v9

    const-string v10, "sim_slot"

    .line 22
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSdSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v9

    .line 23
    invoke-virtual {v9, v8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setReadMsg(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v8

    const-string v9, "content_type"

    .line 24
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v8

    const-string v9, "text"

    .line 25
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setTxtContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 26
    invoke-virtual {v13}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    const-string v8, "eventTypeServer"

    .line 27
    invoke-virtual {v12, v8}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v8

    move-object/from16 v9, p2

    .line 28
    invoke-virtual {v8, v9}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v8

    .line 29
    invoke-virtual {v8, v11}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v8

    .line 30
    invoke-virtual {v8, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v8

    .line 31
    invoke-virtual {v8, v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v8

    .line 32
    invoke-virtual {v8, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v8

    iget-object v10, v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    .line 33
    invoke-virtual {v8, v10}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    .line 34
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "sync_status"

    const-string v11, "Updating"

    .line 35
    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v10, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mColumnNameTranslator:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 38
    sget-object v13, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mColumnNameTranslator:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 39
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 40
    invoke-virtual {v8, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 41
    :cond_7
    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    iget-object v10, v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v1, "res_url=?"

    invoke-virtual {v3, v10, v8, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mUpdatedRequestedList:Ljava/util/List;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v7

    :goto_5
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public makeUpdateRequestForMsg()V
    .locals 16

    move-object/from16 v6, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeUpdateRequestForMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", list size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateRequestObj"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 10
    iget-object v3, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {v6, v3, v0, v7, v8}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->classifyUpdateList(Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    const-string v3, "mms_noti"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "mms"

    if-nez v2, :cond_2

    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "UpdateRequest"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "UpdateMmsRequest"

    :goto_2
    move-object v10, v2

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v11, "correlation_id"

    const-string v12, "?)"

    const-string v13, "correlation_tag in ("

    const-string v14, "?,"

    const-string v15, "\u0000"

    if-eqz v2, :cond_6

    .line 14
    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    const-string v5, "sms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    const-string v5, "wap"

    .line 15
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 17
    :cond_3
    iget-object v2, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?) OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [C

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_4

    .line 24
    :cond_5
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    move-object v2, v1

    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v4, v10

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->makeSyncEvent(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    .line 30
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "identifier"

    .line 31
    invoke-static {v0, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->bundleListToArrayList(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v4, v10

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->makeSyncEvent(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    invoke-direct {v6, v8, v10}, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->makeSyncEventForReplace(Ljava/util/List;Ljava/lang/String;)V

    .line 37
    :cond_8
    iget-object v0, v6, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mUpdatedRequestedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2bc

    const-string v2, "result"

    if-nez v0, :cond_a

    .line 38
    iget-object v0, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 39
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget-object v4, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 41
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->notifyErrorResultToApp()V

    goto :goto_7

    .line 42
    :cond_a
    iget-object v0, v6, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mUpdatedRequestedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 43
    iget-object v0, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "correlation_tag"

    .line 44
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    iget-object v7, v6, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mUpdatedRequestedList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v6, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mUpdatedRequestedList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 47
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    iget-object v4, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 49
    :cond_c
    :goto_7
    iget-object v0, v6, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 50
    iget-object v0, v6, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v1, v6, Lcom/samsung/android/mdecservice/nms/request/UpdateRequestObject;->mSyncList:Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_d
    return-void
.end method
