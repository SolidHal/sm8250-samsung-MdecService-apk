.class public Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;
.super Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
.source "FtDownloadRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FtDownloadRequest"


# instance fields
.field private attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isRelay"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " reqType"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getSyncEventDownload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventDownload"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "correlation_tag"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "payload_url"

    .line 6
    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(ILandroid/os/Bundle;)V

    return-object v0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 10
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "GetRcsPayloadRequest"

    .line 12
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "status_flag"

    .line 13
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->translateCmcFlagToNmsFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getSyncEventGetPayload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventGetPayload"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/BundleHelper;->modifyImdnId(Landroid/os/Bundle;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->writeToBuffer(Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 5
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "PostRcsRequest"

    .line 7
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "\\Pending"

    .line 8
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 9
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRelay(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getSyncEventRelayDownload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventRelayDownload"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->parseAttrRelay(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "correlation_id"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "correlation_tag"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v3

    const-string v4, "payload_url"

    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(ILandroid/os/Bundle;)V

    return-object v0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v2, "GetRcsPayloadRequest"

    .line 10
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v2, "finished"

    .line 11
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setPayloadUploadStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 13
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private parseAttrRelay(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    .line 2
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "file_path"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

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

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 12
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->setMiscRcsAttr(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private writeToBuffer(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "file_path"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rcs"

    .line 4
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "correlation_id"

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "correlation_id=?"

    .line 6
    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " row"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mClient:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->addEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_0
    return-void
.end method

.method protected getSyncEventPost(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventPost"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "correlation_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "correlation_tag"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sync_status"

    const-string v4, "finished"

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateBufferDB(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->getSyncEventRelayDownload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->getSyncEventGetPayload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;->getSyncEventDownload(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1
.end method

.method protected isValidServerRequest(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "correlation_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "correlation_tag"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
