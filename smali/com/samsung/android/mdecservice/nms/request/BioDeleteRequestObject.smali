.class public Lcom/samsung/android/mdecservice/nms/request/BioDeleteRequestObject;
.super Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;
.source "BioDeleteRequestObject.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BioDeleteRequestObj"


# direct methods
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

    return-void
.end method


# virtual methods
.method public prepareSyncEvent()V
    .locals 14

    const-string v0, "res_url"

    .line 1
    new-instance v1, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v2, "eventTypeServer"

    const-string v3, "eventTypeRcs"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "service_id"

    if-ge v5, v6, :cond_1

    .line 5
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, v6}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->isValidBioRequest(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service_id in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [C

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([C)V

    const-string v8, "\u0000"

    const-string v9, "?,"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 10
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "chatbotinfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    filled-new-array {v0, v7}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    .line 12
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 13
    new-instance v5, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_3

    .line 14
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 16
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 18
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v6

    const-string v8, "DeleteCifRequest"

    .line 20
    invoke-virtual {v6, v8}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v6

    .line 21
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 22
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    .line 23
    invoke-virtual {v6, v8}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    move-result-object v6

    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Deleting"

    invoke-virtual {v5, v6, v8, v9}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 28
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 29
    :cond_3
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x2bc

    const-string v3, "result"

    if-nez v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 32
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->notifyErrorResultToApp()V

    goto :goto_4

    .line 35
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 36
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 37
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 39
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 41
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 42
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 43
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 44
    throw v0
.end method
