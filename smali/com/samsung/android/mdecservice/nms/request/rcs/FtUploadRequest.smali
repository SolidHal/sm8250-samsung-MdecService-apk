.class public Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;
.super Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
.source "FtUploadRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FtUploadRequest"


# instance fields
.field private attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    return-void
.end method

.method private getSyncEventUpload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventUpload changed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;->parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "rcs"

    .line 5
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "correlation_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "correlation_id"

    .line 6
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x0

    .line 7
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "payload_url"

    .line 9
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "res_url"

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 11
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 15
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "PostRcsRequest"

    .line 17
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    return-object v0

    .line 19
    :cond_3
    :goto_1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 20
    :goto_2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 21
    throw p1

    :cond_4
    :goto_3
    return-object v0
.end method

.method private parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "imdn_message_id"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setImdnMessageID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "content_type"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "file_name"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFileName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "file_path"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "file_size"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFileSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "thumbnail_file_path"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setThumbFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "msg_context"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v2

    .line 10
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 15
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->setMiscRcsAttr(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getSyncEventPost(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;->getSyncEventUpload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1
.end method

.method protected isValidServerRequest(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "correlation_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
