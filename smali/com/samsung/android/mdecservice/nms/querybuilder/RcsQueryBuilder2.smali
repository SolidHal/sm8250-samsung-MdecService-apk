.class public Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;
.super Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;
.source "RcsQueryBuilder2.java"


# static fields
.field private static final FILENAME_PREFIX:Ljava/lang/String; = "cmc_"

.field private static final LOG_TAG:Ljava/lang/String; = "RcsQueryBuilder2"

.field private static final MAX_PENDING_SM_SIZE:I = 0x64


# instance fields
.field private mAppSender:Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

.field private mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

.field private mPendingStateMsgs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V

    .line 2
    new-instance p2, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-direct {p2, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    .line 3
    new-instance p2, Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

    invoke-direct {p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mAppSender:Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

    .line 4
    new-instance p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$1;

    const/16 p2, 0x10

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$1;-><init>(Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;I)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mPendingStateMsgs:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private doInsert4prepareAppBundle(Landroid/os/Bundle;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 10

    .line 1
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDirection()Ljava/lang/String;

    move-result-object v0

    const-string v1, "direction"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "local_address"

    const-string v3, "remote_address"

    if-nez v1, :cond_4

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTo()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFrom()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, ""

    if-nez v5, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 8
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v4, v7

    .line 9
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getParticipants()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 14
    invoke-interface {v7, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 15
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 16
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 17
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTo()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 21
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_2
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getImdnMessageID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imdn_message_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAppMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg_context"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->translateNmsFlagToCmcFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status_flag"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getSdSimIndex()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim_slot"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContributionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contribution_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getConversationID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getThreadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_alias"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getChatId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg_content"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getObjectId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "object_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->isGroupChat()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_group_chat"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 37
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getParticipants()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "participants"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    :cond_6
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ft-message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_size"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getObjectId()Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileSize()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    .line 44
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->triggerThumbnailGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_7
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 47
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "misc attr bundle size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_8
    return-void
.end method

.method private fillBufferDBValues(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fillBufferDBValues"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$3;->$SwitchMap$com$samsung$android$mdecservice$nms$constants$NmsConstants$opType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "upload_status"

    const-string v4, "rcs"

    const-string v5, "lastmodseq"

    const-string v6, "date"

    const/4 v7, 0x1

    if-eq v2, v7, :cond_8

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v2, v8, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->prepareAppBundle(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "delete"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_1
    new-array p1, v7, [Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v9

    .line 10
    sget-object p2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->RCS_MESSAGES_URI:Landroid/net/Uri;

    const-string v0, "res_url==?"

    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 11
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " DeletedRows from table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsGroupAttributeList()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 14
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->processGroupInfoUpdatePush(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)Landroid/os/Bundle;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUploadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUploadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getLastModSeq()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 23
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "res_url=?"

    .line 25
    invoke-virtual {v1, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 26
    sget-object v1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update table :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->prepareAppBundle(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    const-string p1, "update"

    .line 28
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 29
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v2

    const-string v7, "msg_context"

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v7, "file_path"

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    const-string v7, "correlation_id"

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v2

    const-string v7, "correlation_tag"

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    const-string v7, "res_url"

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "result_code"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sync_status"

    const-string v6, "Inserting"

    .line 36
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getLastModSeq()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ft-message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbnail_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_9
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 42
    sget-object v1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillBufferDBValues PayloadUrl: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_a
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUploadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 45
    sget-object v1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillBufferDBValues PayloadUploadStatus: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUploadStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUploadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->prepareAppBundle(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "insert"

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 52
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 53
    sget-object v0, Lcom/samsung/android/mdeccommon/log/Label;->APP_INTENT:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 54
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->dumpLogger(Ljava/lang/String;)V

    :cond_c
    :goto_1
    return-void
.end method

.method private fillBufferDBValuesForCif(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBotServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getCif()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->fillBufferDBValuesForCif(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getMessageContext(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 5

    const-string v0, "correlation_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "correlation_tag"

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    return-object p1

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    const-string v4, "msg_context"

    .line 6
    invoke-virtual {v3, v4, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributeFromBufferDB(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAppMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->existsInGroupTable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v1, "group_info"

    .line 9
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageContext: message context "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private handleGioUpdateResponse(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleGioUpdateResponse: invalid response"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "st_timestamp"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "res_url"

    .line 8
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    sget-object v1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v2, "invalid resource url"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "_id"

    .line 12
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "group_chat_id"

    .line 14
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    const-string v8, "group_info"

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const-string v10, "res_url==?"

    invoke-virtual {v7, v8, v3, v10, v9}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributesFromBufferDB(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 17
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 18
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v7, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isDateOlder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;->ATTR_STATE:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    .line 24
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "eventTypeServer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "GetRequest"

    .line 27
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsGroupInfoAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/stateMsg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private handleGroupInfoObjects(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleGroupInfoObjects"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->isOlderGio(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    sget-object v1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v2, "older gio received"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->createGroupInfoBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getObjectID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "object_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateToBuffer(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;)I

    move-result v3

    if-lez v3, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->writeToBuffer(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;)V

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "update"

    .line 17
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "insert"

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->handlePendingStateMsgs(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private handleGroupStateMsgObjects(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleGroupStateMsgObjects"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "group_info"

    const-string v5, "st_timestamp"

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast v1, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getTimestamp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 9
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    const-string v2, "chat_id==?"

    .line 12
    invoke-virtual {v7, v4, v6, v2, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributesFromBufferDB(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    sget-object v2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGroupStateMsgObjects failed, Chat-Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getStTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->createStateMsgBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getStTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getStTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isDateOlder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getStTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->createStateMsgBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :cond_7
    :goto_3
    sget-object v1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleGroupStateMsgObjects failed"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 26
    :cond_8
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/String;

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v2

    const-string v1, "chat_id=?"

    .line 31
    invoke-virtual {v7, v8, v6, v1, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 32
    sget-object v6, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleGroupStateMsg updateSuccess "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :cond_9
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "update"

    .line 34
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_a
    return-void
.end method

.method private handlePendingStateMsgs(Ljava/util/List;)V
    .locals 3
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

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "chat_id"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mPendingStateMsgs:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mPendingStateMsgs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->createStateMsgBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "update"

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleRelayDataObjects(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRelayDataObjects "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->handleRelayDataObject(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isOlderGio(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "timestamp"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    const-string v3, "group_info"

    .line 4
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupChatId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "chat_id==?"

    .line 6
    invoke-virtual {v2, v3, v0, v6, v5}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributesFromBufferDB(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "no gio object exist"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 8
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db gio timestamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getTimestamp()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isDateSameOrOlder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    return v7
.end method

.method private prepareAppBundle(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)Landroid/os/Bundle;
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "prepareAppBundle"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "se is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    sget-object v3, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v4, "tag is present"

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "correlation_tag"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    sget-object v3, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v4, "id is present"

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "correlation_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    sget-object v3, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$3;->$SwitchMap$com$samsung$android$mdecservice$nms$constants$NmsConstants$opType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_f

    const/4 v3, 0x2

    const-string v4, "chat_id"

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    return-object v0

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getObjectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 13
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getObjectId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "object_id"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v2

    :cond_6
    const-string p1, "msg_context"

    if-eqz v1, :cond_c

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v3, "date"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getImdnMessageID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getImdnMessageID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "imdn_message_id"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 21
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAppMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attr.getMsgContext()"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_9
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_a
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 26
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "misc attr bundle size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 28
    :cond_b
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->isGroupChat()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_group_chat"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_c
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "ft"

    const-string v4, "status_flag"

    if-nez v1, :cond_d

    .line 31
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->translateNmsFlagToCmcFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_available"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 33
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "file available"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_d
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUploadStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 36
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getPayloadUploadStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Payload Upload Status Update"

    invoke-static {p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v2

    :cond_f
    if-eqz v1, :cond_10

    .line 39
    invoke-direct {p0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->doInsert4prepareAppBundle(Landroid/os/Bundle;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V

    :cond_10
    return-object v2
.end method

.method private prepareResponseBundle(Landroid/content/ContentValues;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->getMessageContext(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg_context"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "group_info"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "correlation_id"

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "correlation_tag"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result_code"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "result"

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0xc8

    .line 11
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    const-string v1, "object_id"

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private processGroupInfoUpdatePush(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)Landroid/os/Bundle;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, " Testing processGroupInfoUpdatePush"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsGroupAttributeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getSubject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "subject"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getMystatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "my_status"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "msg_context"

    const-string v5, "group_info"

    .line 9
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "chat_id"

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getStTimestamp()Ljava/lang/String;

    move-result-object v0

    const-string v4, "st_timestamp"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "res_url=?"

    .line 18
    invoke-virtual {v0, v4, v3, p1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update table :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private sendBroadCastToAppForRelayRcs(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sendBroadCastToAppForRelayRcs"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->writeToBuffer(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;)V

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "correlation_tag"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getObjectID()Ljava/lang/String;

    move-result-object p2

    const-string v2, "object_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getSdSimIndex()Ljava/lang/String;

    move-result-object p2

    const-string v2, "sim_slot"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getThreadId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "thread_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "date"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "device_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTo()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v2, "remote_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFrom()Ljava/lang/String;

    move-result-object p2

    const-string v2, "local_address"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAppMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "msg_context"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->translateNmsFlagToCmcFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "status_flag"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDirection()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "direction"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getImdnMessageID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "imdn_message_id"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_type"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getUserAlias()Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_alias"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getChatId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg_content"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->isGroupChat()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "is_group_chat"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getSubject()Ljava/lang/String;

    move-result-object p1

    const-string p2, "subject"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getParticipants()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getParticipants()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string p2, "participants"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ft-message"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file_name"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "file_size"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file_path"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 31
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "misc attr bundle size:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string v0, "MdecService"

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v2, 0x4e20

    .line 35
    invoke-virtual {p1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 36
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object p1

    const-string p2, "rcs"

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setEventType(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setRelayRequest()V

    .line 39
    :cond_5
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "inserted request for relay"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$2;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$2;-><init>(Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendRelayRcsBroadcastToApp(Ljava/util/ArrayList;)V

    return-void

    .line 41
    :cond_6
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid data"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastToApp:, requestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rcsBundles:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v1, "rcs"

    const/4 v2, 0x3

    invoke-interface {v0, p2, v1, p1, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mAppSender:Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendPayloadProgressBroadcastToApp(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPayloadProgressBroadcastToApp:, rcsBundles:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v1, "rcs"

    const-string v2, "update"

    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mAppSender:Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;->sendPayloadProgressBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendRelayRcsBroadcastToApp(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRelayRcsBroadcastToApp: rcs bundles:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v1, "rcs"

    const-string v2, ""

    const/4 v3, 0x3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mAppSender:Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;->sendRelayRcsBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendResponseTOAPP(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponseTOAPP and request type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "transaction_id"

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->prepareResponseBundle(Landroid/content/ContentValues;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getFailureResponseList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getFailureResponseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    if-nez v3, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->prepareResponseBundle(Landroid/content/ContentValues;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->isRelayResponse()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "post"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getTid()Ljava/lang/String;

    move-result-object p1

    const-string v2, "rcs"

    invoke-interface {v1, p1, v2, p2, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 16
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyRelayRcsResult(Ljava/util/List;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private sendUploadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUploadStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;-><init>()V

    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object p4

    .line 4
    invoke-virtual {v0, p4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object p4

    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_PAYLOAD_STATUS:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    .line 5
    invoke-virtual {p4, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p4

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p3

    const-string v0, "eventTypeServer"

    invoke-virtual {p3, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p3

    invoke-virtual {p3, p7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p3

    const-string p7, "PostRcsRequest"

    invoke-virtual {p3, p7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid flow. attr or uploadStatus is null!"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private triggerThumbnailGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerThumbnailGetRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "fileName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/samsung/android/mdecservice/nms/util/FileUtil;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v1

    const-string v2, "ft-message"

    .line 5
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 6
    invoke-virtual {v1, p5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFileName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 7
    invoke-virtual {v1, p6}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 8
    invoke-virtual {v1, p7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFileSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 9
    sget-object p5, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_FT:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    invoke-virtual {v1, p5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 10
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    .line 11
    new-instance p5, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    invoke-direct {p5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;-><init>()V

    const-string p6, "eventTypeServer"

    invoke-virtual {p5, p6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p5

    const-string p6, "GetRcsThumbRequest"

    invoke-virtual {p5, p6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 16
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public fillBufferDBValuesForCif(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fillBufferDBValuesForCif"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "service_id"

    .line 6
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cif_json_content"

    .line 7
    invoke-virtual {v2, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v4, "date"

    invoke-virtual {v2, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p5

    const v2, -0x4f997a55

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p5, v2, :cond_2

    const v2, -0x468f3d47

    if-eq p5, v2, :cond_1

    const v2, -0x31ffc737    # -5.3780128E8f

    if-eq p5, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p5, "update"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    move p5, v6

    goto :goto_1

    :cond_1
    const-string p5, "insert"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    move p5, v5

    goto :goto_1

    :cond_2
    const-string p5, "delete"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p5, -0x1

    :goto_1
    const-string v2, "sync_status"

    const-string v7, "date_formated"

    const-string v8, "cif"

    if-eqz p5, :cond_5

    if-eq p5, v6, :cond_4

    goto/16 :goto_2

    .line 11
    :cond_4
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Updating"

    .line 13
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    new-array p5, v6, [Ljava/lang/String;

    aput-object p4, p5, v5

    const-string p4, "res_url=?"

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 15
    sget-object p3, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Update table :"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "res_url"

    .line 19
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Inserting"

    .line 20
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 22
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 23
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object p2

    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 24
    sget-object p3, Lcom/samsung/android/mdeccommon/log/Label;->APP_INTENT:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {p2, p3}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 25
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object p2

    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->dumpLogger(Ljava/lang/String;)V

    .line 26
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const/4 p3, 0x3

    invoke-interface {p2, v1, v8, p1, p3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 27
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p3, p2, v8, p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public handleGetBinaryDataCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetBinaryDataCompleted: coId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " coTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " objectId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attr type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "object_id"

    .line 6
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "correlation_id"

    .line 7
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "correlation_tag"

    .line 8
    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p4, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$3;->$SwitchMap$com$samsung$android$mdecservice$nms$attribute$RcsMessageAttribute$AttrType:[I

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p4, p4, p6

    const/4 p6, 0x1

    const-string v1, "file_available"

    const-string v2, "status_flag"

    const-string v3, "download_payload"

    const-string v4, "msg_context"

    const-string v5, "file_path"

    if-eq p4, p6, :cond_4

    const/4 p6, 0x2

    if-eq p4, p6, :cond_2

    const/4 p2, 0x3

    if-eq p4, p2, :cond_0

    .line 10
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "handleGetBinaryDataCompleted: no match: return"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "ft"

    .line 11
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileSize()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "file_size"

    invoke-virtual {v0, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object p2

    const-string p4, "file_name"

    invoke-virtual {v0, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-boolean p2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    if-nez p2, :cond_1

    .line 17
    invoke-virtual {v0, v5, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "content_type"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xc8

    const-string p4, "result"

    .line 20
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string p4, "rcs"

    const-string p5, "post"

    invoke-interface {p3, p2, p4, p5, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 23
    sget-boolean p2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    if-nez p2, :cond_3

    .line 24
    invoke-virtual {v0, v5, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-direct {p0, p5, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    return-void

    .line 28
    :cond_4
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-boolean p2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    if-nez p2, :cond_5

    .line 32
    invoke-virtual {v0, v5, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_5
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 35
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 36
    sget-object p3, Lcom/samsung/android/mdeccommon/log/Label;->APP_INTENT:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {p2, p3}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 37
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->dumpLogger(Ljava/lang/String;)V

    :cond_6
    const-string p2, "update"

    .line 38
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public handleGroupStateMsg(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleGroupStateMsg"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleGroupStateMsg failed"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleGroupStateMsg invalid chat ID"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->existsInGroupTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->createStateMsgBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "update"

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mPendingStateMsgs:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mPendingStateMsgs:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mPendingStateMsgs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public handleNotifyUploadComplete(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotifyUploadComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_5

    if-nez p6, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "pending"

    .line 2
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object p6, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT relayData req: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "box:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/objects/"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/payload"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "unavailable"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p7

    move-object v5, p4

    move-object v6, p5

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendUploadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "unavailable"

    .line 8
    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ft"

    const-string p5, "update"

    goto :goto_0

    :cond_2
    const-string p1, "upload_payload"

    const-string p5, "post"

    .line 9
    :goto_0
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "object_id"

    .line 11
    invoke-virtual {p7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "msg_context"

    .line 12
    invoke-virtual {p7, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "correlation_id"

    .line 13
    invoke-virtual {p7, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc8

    const-string p2, "result"

    .line 14
    invoke-virtual {p7, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p6, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string p2, "rcs"

    invoke-interface {p1, p3, p2, p5, p6}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    const-string p1, "finished"

    .line 17
    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "upload_status"

    .line 19
    invoke-virtual {v5, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->RCS_MESSAGES_URI:Landroid/net/Uri;

    const/16 v4, 0x2e

    new-array v7, v1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p5, v7, p1

    const-string v6, "correlation_tag=?"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 21
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updated rows  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "device is SD. return!"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 23
    :cond_5
    :goto_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid flow. attr | uploadStatus is null!"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePayloadNotify(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p3, "handlePayloadNotify"

    invoke-static {p1, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "msg_context"

    const-string v1, "ft"

    .line 4
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "correlation_tag"

    .line 5
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "status_flag"

    const-string v0, "file_available"

    .line 6
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "is-relay"

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "update"

    .line 9
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public handlePayloadProgressEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "handlePayloadProgressEvent"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg_context"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "correlation_id"

    .line 5
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_tag"

    .line 6
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->getBytesTransferred()J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    const-string p4, "file_size"

    const-string v0, "payload_state"

    if-nez p3, :cond_0

    .line 8
    sget-object p3, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->STARTED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->getContentLength()J

    move-result-wide v0

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->getContentLength()J

    move-result-wide v1

    invoke-virtual {p2, p4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->getBytesTransferred()J

    move-result-wide p3

    const-string v1, "bytes_transferred"

    invoke-virtual {p2, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->isDone()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->getBytesTransferred()J

    move-result-wide p3

    invoke-virtual {p5}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;->getContentLength()J

    move-result-wide v1

    cmp-long p3, p3, v1

    if-gez p3, :cond_1

    .line 14
    sget-object p3, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->FAILED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 15
    :cond_1
    sget-object p3, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->COMPLETED:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 16
    :cond_2
    sget-object p3, Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;->INPROGRESS:Lcom/samsung/android/cmcopenapi/CmcParameter$Key$Rcs$PayloadState;

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendPayloadProgressBroadcastToApp(Ljava/util/ArrayList;)V

    return-void
.end method

.method public handlePostPayloadCompleted(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handlePostPayloadCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "box:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/objects/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/payload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "finished"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendUploadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePostSuccessResponseWithNoBody(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handlePostSuccessResponseWithNoBody"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mDbHelper:Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    invoke-virtual {v1, p4}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->existsInGroupTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "msg_context"

    const-string v2, "state_msg"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "chat_id"

    .line 7
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "correlation_id"

    .line 9
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "correlation_tag"

    .line 11
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 p3, 0xc8

    const-string p4, "result"

    .line 12
    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "transaction_id"

    .line 13
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 16
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 17
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string p4, "rcs"

    const-string v0, "post"

    invoke-interface {p3, p2, p4, v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyRelayRcsResult(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public handleRcsObjects(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRcsObjects objectType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "handleRcsObjects failed"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$3;->$SwitchMap$com$samsung$android$mdecservice$nms$constants$NmsConstants$RcsObjectType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->handleRelayDataObjects(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->handleGroupStateMsgObjects(ILjava/util/List;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->handleGroupInfoObjects(ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public handleRelayDataObject(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRelayDataObject"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->isGroupRelayData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->createGroupInfoAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->createRelayDataBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendRelayRcsBroadcastToApp(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRelayDataObject: invalid relayData ignore"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->isFtRelayData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->getAttributeMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "MessageId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v5, "imdn_message_id"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->getAttributeMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "correlation_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msg_context"

    const-string v3, "upload_payload"

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "update"

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadcastToApp(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->getResUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->getResUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v0, "DeleteRequest"

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v1, "eventTypeServer"

    const-string v2, "eventTypeRcs"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_3
    return-void
.end method

.method protected insertResponseOnPostSuccess(Landroid/net/Uri;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)I
    .locals 11

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insertResponseOnPostSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://rcs/groups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "correlation_tag"

    const-string v5, "correlation_id"

    if-eqz v0, :cond_1

    const-string v6, "group_chat_id"

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    goto :goto_1

    :cond_2
    move-object v6, v5

    .line 5
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    sget-object v3, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v4, "resource update skipped"

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "res_url"

    .line 10
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "payloadurl"

    .line 11
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 12
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "payload_url"

    invoke-virtual {v8, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v7, 0x2e

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    aput-object v4, v10, v1

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 14
    :cond_6
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ids updated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows for the uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public processPushReceivedEvents(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "processPushReceivedEvents"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "either id or tag present"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->fillBufferDBValues(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getDdmMsgObjectList()Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "rcs_read"

    const-string v3, "rcs_deliver"

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;

    .line 12
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data_type"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getMessage()[B

    move-result-object v5

    const-string v6, "alert_message"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    const/4 v1, 0x3

    const-string v4, "insert"

    if-nez p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p1, p2, v3, v4, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mAppSender:Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

    invoke-virtual {v5, p1, v3, v4, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p1, v0, v2, v4, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->mAppSender:Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;

    invoke-virtual {p2, p1, v2, v4, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/AppSender;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method public processPushReceivedEventsForCif(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "processPushReceivedEventsForCif"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->fillBufferDBValuesForCif(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;)V

    return-void
.end method

.method public updateRcs(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateRcs"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid object"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "\\Pending"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rcs"

    invoke-interface {p1, v1, p4, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->isDuplicatedLastModSeq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadCastToAppForRelayRcs(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;)V

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getUploadStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "finished"

    .line 7
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 8
    sget-object p4, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v0, "notify PayloadNotify to App"

    invoke-static {p4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "sync_status"

    .line 10
    invoke-virtual {p4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 12
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "correlation_tag=?"

    .line 13
    invoke-virtual {p2, v0, p4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->handlePayloadNotify(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateRcs(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateResponseOnDeleteCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateResponseOnDeleteCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "delete"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendResponseTOAPP(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "res_url"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res_url in ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const-string v2, "\u0000"

    const-string v3, "?,"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 11
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->RCS_MESSAGES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 12
    sget-object v3, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " deletedRows from messages table  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->GROUPS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    add-int/2addr v2, p1

    .line 15
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deletedRows from group table = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected updateResponseOnPostCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateResponseOnPostCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->RCS_MESSAGES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->insertResponseOnPostSuccess(Landroid/net/Uri;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->GROUPS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->insertResponseOnPostSuccess(Landroid/net/Uri;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)I

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getResponseType()Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v2, "code"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    const-string v2, "flag"

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\Pending"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Object is already created in Server. Need to Update again"

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v2

    .line 17
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v4

    const-string v5, "res_url"

    .line 18
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v4

    const-string v5, "correlation_tag"

    .line 19
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v4

    const-string v5, "correlation_id"

    .line 20
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    const-string v4, "eventTypeServer"

    .line 21
    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    const-string v4, "UpdateRequest"

    .line 22
    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getTid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRelay(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    :cond_2
    const-string v0, "post"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendResponseTOAPP(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;Ljava/lang/String;)V

    return-void
.end method

.method protected updateResponseOnUpdateCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateResponseOnUpdateCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendResponseTOAPP(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->handleGioUpdateResponse(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    return-void
.end method
