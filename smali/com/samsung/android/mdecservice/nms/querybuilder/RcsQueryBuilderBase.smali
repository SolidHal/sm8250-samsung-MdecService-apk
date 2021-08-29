.class public Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;
.super Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;
.source "RcsQueryBuilderBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsQueryBuilderBase"


# instance fields
.field protected mNmsRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V

    .line 2
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->mNmsRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "removed phase 1"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillBufferDBValuesForCif(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleGetBinaryDataCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleGroupStateMsg(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V
    .locals 0

    return-void
.end method

.method public handleNotifyUploadComplete(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 0

    return-void
.end method

.method public handlePayloadNotify(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handlePayloadProgressEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "handleFtProgressEvent applicable for phase 2. Ignored"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePostPayloadCompleted(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handlePostSuccessResponseWithNoBody(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "handlePostSuccessResponseWithNoBody supported for phase 2"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleRcsObjects(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V
    .locals 0
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

    return-void
.end method

.method public handleRelayDataObject(Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;)V
    .locals 0

    return-void
.end method

.method public processPushReceivedEvents(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "processPushReceivedEvents"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processPushReceivedEventsForCif(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "processPushReceivedEventsForCif"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRcs(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;Z)V
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateRcs"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "object is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    const-string v4, "lastmodseq"

    .line 7
    invoke-virtual {v3, v4, v1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_1

    const-string v2, "0"

    :cond_1
    const-string v5, "eventTypeDb"

    if-nez v4, :cond_2

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string p4, "InsertRequest"

    .line 10
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 12
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setLastModSeq(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getPayloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setPayloadUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getUploadStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setPayloadUploadStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getDdmMsgObjectsList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setDdmMsgObjectsList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 23
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "DB rcs message record not found. INSERT it"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 24
    :cond_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    .line 25
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-nez p2, :cond_3

    .line 26
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 27
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ft-message"

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    .line 29
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p4, "Payload DownLoad request"

    invoke-static {p2, p4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "msg_context"

    const-string v0, "download_payload"

    .line 31
    invoke-virtual {p2, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x1

    new-array v2, p4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const-string v4, "file_path"

    const-string v5, "correlation_id=?"

    .line 32
    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributeFromBufferDB(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imdn_message_id"

    .line 34
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "correlation_id"

    .line 35
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getChatId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "group_chat_id"

    .line 37
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "is-relay"

    .line 38
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v1, "date"

    .line 40
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "status_flag"

    const-string v1, "pending"

    .line 41
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p3, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-direct {p3, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Landroid/content/Context;)V

    const-string v1, "post"

    invoke-virtual {p3, p1, v1, v0, p4}, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->getRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 43
    new-instance p3, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string p4, "eventTypeServer"

    const-string v0, "eventTypeRcs"

    invoke-direct {p3, p4, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->prepareSyncEvent(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    .line 45
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEvent()Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, p3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    goto :goto_0

    .line 47
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "(after DB update)duplicated or old rcs data. ignore it."

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    .line 48
    :cond_5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string p4, "UpdateRequest"

    .line 50
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 52
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setLastModSeq(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 59
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string p2, "DB rcs message record found. UDPATE it"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected updateResponseOnDeleteCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 0

    return-void
.end method

.method protected updateResponseOnPostCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 0

    return-void
.end method

.method protected updateResponseOnUpdateCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 0

    return-void
.end method

.method public updateResponses(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateResponses"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getResponseType()Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase$1;->$SwitchMap$com$samsung$android$mdecservice$nms$agent$object$rcs$GenericResponse$ResponseType:[I

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getResponseType()Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string v0, "reference type , not found"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponseOnDeleteCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponseOnUpdateCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponseOnPostCompleted(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    :goto_0
    return-void

    .line 8
    :cond_1
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->LOG_TAG:Ljava/lang/String;

    const-string v0, "response is null, ignore"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
