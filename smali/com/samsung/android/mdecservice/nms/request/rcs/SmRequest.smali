.class public Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;
.super Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
.source "SmRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmRequest"


# instance fields
.field private attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;


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

    return-void
.end method

.method private parseAttr(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 9

    const-string v0, "left_contacts"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "joined_contacts"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "removed_contacts"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "added_contacts"

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "declined_contacts"

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 6
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    const/16 v6, 0x2bc

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid contact list"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, v6, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(ILandroid/os/Bundle;)V

    return-object v0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->readBuffer(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 11
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v7

    const/16 v8, 0x12f

    if-eqz v7, :cond_1

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "no query result found"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1, v6, v8}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;II)V

    return-object v0

    :cond_1
    const-string v7, "res_url"

    .line 14
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid resUrl"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1, v6, v8}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;II)V

    return-object v0

    .line 18
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;->ATTR_STATE:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    .line 19
    invoke-virtual {v6, v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v6

    const-string v7, "chat_id"

    .line 20
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v6

    const-string v7, "Left"

    .line 21
    invoke-virtual {v6, v0, v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v6, "Joined"

    .line 22
    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "Removed"

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "Added"

    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "Declined"

    .line 25
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "timestamp"

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    .line 28
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 30
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private readBuffer(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "chat_id"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "res_url"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v1

    const-string v2, "group_info"

    .line 5
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "group_chat_id"

    .line 6
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "group_chat_id==?"

    .line 7
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryAttributesFromBufferDB(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getSyncEventPost(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/BundleHelper;->modifyChatId(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->parseAttr(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v2, "PostStateRequest"

    .line 7
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsGroupInfoAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected isValidServerRequest(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "chat_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "group_chat_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "timestamp"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
