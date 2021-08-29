.class public Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;
.super Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
.source "ChatRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ChatRequest"


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isRelay"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deletePayloadFromServerIfExists(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->isFtObject(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v0

    const-string v1, "correlation_id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "correlation_tag"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "payload_url"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v1, "DeleteRequest"

    .line 8
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mClient:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_1
    return-void
.end method

.method private handleResendObject(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 5

    const-string v0, "correlation_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "correlation_tag"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v2

    const-string v3, "res_url"

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4, v0, v1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "PostRcsRequest"

    goto :goto_0

    :cond_1
    const-string v0, "UpdateRequest"

    .line 8
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v1

    .line 9
    iget v3, v1, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v0, "\\Pending"

    .line 12
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 14
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRelay(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_3
    :goto_1
    return-object v1
.end method

.method private isFtObject(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "msg_context"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 10

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    const-string v1, "thread_id"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_slot"

    .line 3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPresentSimCount(Landroid/content/Context;)I

    move-result v4

    if-le v4, v5, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    const-string v4, "-1"

    .line 5
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v2, v6

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->isMuteThread(J)Z

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_2
    if-eq v5, v7, :cond_3

    .line 9
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getNotificationStatus(I)I

    move-result v5

    .line 10
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v5, "direction"

    .line 11
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setDirection(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v7

    const-string v8, "date"

    .line 12
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v7

    const-string v8, "msg_content"

    .line 13
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setTxtContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v7

    const-string v8, "chat_id"

    .line 14
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v7

    const-string v9, "contribution_id"

    .line 15
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setContributionID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v7

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setThreadId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setThreadMute(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v6}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setNotiStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v2, "creator"

    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setCreator(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v2, "imdn_message_id"

    .line 20
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setImdnMessageID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setSdSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v2, "user_alias"

    .line 23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setUserAlias(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v2, "subject"

    .line 24
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v2, "is_group_chat"

    .line 25
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setIsGroupChat(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "msg_context"

    .line 26
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v4, "content_type"

    .line 29
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v4, "participants"

    .line 30
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setParticipants(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v6

    .line 33
    invoke-static {v3, v6}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "file_name"

    .line 35
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFileName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "file_path"

    .line 36
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "file_size"

    .line 37
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFileSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "thumbnail_file_path"

    .line 38
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setThumbFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "thumbnail_file_name"

    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setThumbFileName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "thumbnail_file_content_type"

    .line 40
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setThumbContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v3, "thumbnail_file_size"

    .line 41
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setThumbFileSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    const-string v1, "conversation_id"

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 43
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setConversationID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    goto :goto_3

    .line 44
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setConversationID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 45
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 47
    :cond_5
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "remote_address"

    const-string v5, "local_address"

    if-eqz v1, :cond_8

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_6
    const-string v1, ""

    .line 52
    :goto_4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 53
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 54
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 57
    :cond_7
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_5
    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setTo(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    goto :goto_6

    .line 60
    :cond_8
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 61
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setTo(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 62
    :goto_6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 63
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->setMiscRcsAttr(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected addEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addEvent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getRequestType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->isAttrPresentForUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v1, "eventTypeServer"

    const-string v2, "eventTypeRcs"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mClient:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected getSyncEventDelete(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventDelete"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "correlation_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "correlation_tag"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "correlation_tag=?"

    goto :goto_0

    :cond_0
    const-string v1, "correlation_id=?"

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rcs"

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v2

    const-string v3, "res_url"

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->deletePayloadFromServerIfExists(Landroid/os/Bundle;)V

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(ILandroid/os/Bundle;)V

    return-object v0

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "DeleteRequest"

    .line 13
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 16
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getSyncEventPost(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventPost"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "resend_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/BundleHelper;->modifyDate(Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->handleResendObject(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 6
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "PostRcsRequest"

    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "status_flag"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->translateCmcFlagToNmsFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 10
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRelay(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected getSyncEventUpdate(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSyncEventUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->parseAttrs(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v1

    const-string v2, "correlation_id"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "correlation_tag"

    .line 6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "res_url"

    .line 7
    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    const-string v3, "UpdateRequest"

    .line 9
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v2

    const-string v3, "status_flag"

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->translateCmcFlagToNmsFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 13
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 14
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected isValidServerRequest(Landroid/os/Bundle;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidServerRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getRequestType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "correlation_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "correlation_tag"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg_context"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getRequestType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4f997a55

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v5, :cond_2

    const v5, -0x31ffc737    # -5.3780128E8f

    if-eq v4, v5, :cond_1

    const v5, 0x3498a0

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "post"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v7

    goto :goto_1

    :cond_1
    const-string v4, "update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v8

    goto :goto_1

    :cond_2
    const-string v4, "delete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v6, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v7

    .line 8
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 9
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 10
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ft-message"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    return v7

    :cond_9
    :goto_2
    return v8
.end method

.method protected writeToBuffer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v0

    const-string v1, "rcscommon"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->writeToBuffer(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
