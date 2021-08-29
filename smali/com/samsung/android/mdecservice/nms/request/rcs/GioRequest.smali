.class public Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;
.super Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
.source "GioRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GioRequest"


# instance fields
.field private final allowedOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

.field private final chatIdAllowedOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final contactsAllowedOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subjectAllowedOps:Ljava/util/List;
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
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V

    const-string p1, "create"

    const-string p2, "invite"

    const-string p3, "exit"

    const-string p4, "remove"

    .line 2
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->allowedOps:Ljava/util/List;

    .line 3
    filled-new-array {p1, p2, p4}, [Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->contactsAllowedOps:Ljava/util/List;

    .line 4
    filled-new-array {p2, p4, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->chatIdAllowedOps:Ljava/util/List;

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->subjectAllowedOps:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    return-void
.end method

.method private isValidServerNonRelayRequest(Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getRequestType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x31ffc737    # -5.3780128E8f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x3498a0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "timestamp"

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "subject"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    return v3

    .line 3
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "group_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    return v4

    :cond_7
    :goto_3
    return v3
.end method

.method private isValidServerRelayRequest(Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isValidServerRelayRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "correlation_tag"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_type"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->allowedOps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v2, "create"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->chatIdAllowedOps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->contactsAllowedOps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "op_contacts"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_0
    return v3
.end method

.method private parseAttr(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->parseAttrRelay(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->parseAttrNonRelay(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1
.end method

.method private parseAttrNonRelay(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseAttrNonRelay"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "subject"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "group_type"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "Conversation-ID"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setChatIdReference(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "my_status"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setMystatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "timestamp"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "participants"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "chat_id"

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "group_chat_id"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "correlation_tag"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOpTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;->ATTR_INFO:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->setMiscRcsAttr(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private parseAttrRelay(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseAttrRelay"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "op_type"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v1

    const-string v2, "op_contacts"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOpContacts(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;->ATTR_RELAY:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 6
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOperation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    const-string v2, "correlation_tag"

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOpTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    const-string v2, "group_type"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    const-string v2, "group_chat_id"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 10
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->subjectAllowedOps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "subject"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 13
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->setMiscRcsAttr(Landroid/os/Bundle;)V

    .line 14
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private parseAttrUpdate(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseAttrUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "group_chat_id"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "my_status"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setMystatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "subject"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    const-string v1, "timestamp"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private readBuffer(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "group_info"

    .line 2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v3, 0x0

    const-string v4, "group_chat_id=?"

    const/4 v6, 0x0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "res_url"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_0

    .line 7
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    const-string v0, ""

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected getSyncEventDelete(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    const-string v1, "group_chat_id"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "group_info"

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "group_chat_id=?"

    .line 4
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->readBuffer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(ILandroid/os/Bundle;)V

    return-object v0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    const-string v2, "DeleteRequest"

    .line 10
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getSyncEventPost(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->parseAttr(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v2, "PostGroupInfoRequest"

    .line 6
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsGroupInfoAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRelay(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->mSyncEventBase:Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getSyncEventUpdate(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->parseAttrUpdate(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->attr:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "group_chat_id"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->readBuffer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resUrl missing"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    const/16 v1, 0x2bc

    const/16 v2, 0x12f

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncResult;-><init>(Landroid/os/Bundle;II)V

    return-object v0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getSyncEventBuilder(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const-string v2, "UpdateGroupInfoRequest"

    .line 10
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsGroupInfoAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->setRcsMessageAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    move-result-object p1

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

.method protected isValidServerRequest(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isValidServerRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->isValidServerRelayRequest(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;->isValidServerNonRelayRequest(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public prepareSyncEvent(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/BundleHelper;->modifyChatId(Landroid/os/Bundle;)V

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->prepareSyncEvent(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->isRelay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;->getDbHelper()Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    move-result-object v0

    const-string v1, "rcsgroups"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->writeToBuffer(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
