.class public Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;
.super Ljava/lang/Object;
.source "AgentManagerFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgentManagerFactory"

.field public static final MAX_AGENT_CAPACITY:I = 0x1e

.field private static volatile mCallMgrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mMsgMgrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mRcsMgrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mSubMgrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAgentHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

.field private mCalllogSubListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mMsgSubListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private mPushToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPushToken:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mContext:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mAgentHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/fcm/FirebaseHelper;->getPushTokenForNms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPushToken:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create Agent Managers, mPhoneCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;-><init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getServiceAgentArray(I)[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->getSubAgentArray()[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bulkPostRcsMessages(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkPostRcsMessages: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkPostRcs(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public deleteCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCalllog: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public deleteContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteContact: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->deleteContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public deleteMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMsg: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public deleteRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRcs: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public disableCalllogSync(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->disableCallLogSync()V

    return-void
.end method

.method public disableMsgSync(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->disableMsgSync()V

    return-void
.end method

.method public doCifOperation(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCifOperation: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->doCifOperation(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public dump()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[NMS2]"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->increaseIndent(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->decreaseIndent(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mAgentHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;)V

    return-void
.end method

.method public enableCalllogSync(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->enableCallLogSync(Ljava/util/Set;)V

    return-void
.end method

.method public enableMsgSync(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->enableMsgSync(Ljava/util/Set;)V

    return-void
.end method

.method public getCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCalllog: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->get(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public getMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsg: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->get(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public getMsgNoti(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsgNoti: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public getNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Landroid/os/RemoteCallbackList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;",
            ")",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgSubListeners:Landroid/os/RemoteCallbackList;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v0, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCalllogSubListeners:Landroid/os/RemoteCallbackList;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcs: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->get(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public handleCallLogListEvents(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCallLogListEvents"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->handleListEvents(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    return-void
.end method

.method public handleMsgListEvents(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMsgListEvents"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->handleListEvents(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    return-void
.end method

.method public handleRcsMsgListEvents(ILcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRcsMsgListEvents"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->handleListEvents(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    return-void
.end method

.method public isSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->isRegistered(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z

    move-result p1

    return p1
.end method

.method public notifyNmsSubscription(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;ZLcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mAgentHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNmsSubscription: subscribed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[NMS2]"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;->onSubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;->onUnsubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify Subscription for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", finish"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_2
    return-void
.end method

.method public postCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postCalllog: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public postContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postContact: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->postContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public postMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postMsg: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public postMsgNoti(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postMsgNoti: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->postNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public postRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRcs: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public postRelayRequest(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRelayRequest: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->postRelayRequest(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public postRelayResponse(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRelayResponse: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->postRelayResponse(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public registerCallLogAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->registerListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerMessageAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->registerListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerRcsAgentEventListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->registerListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSubscriptionListener: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string p2, "listener is null.."

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v0, p2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgSubListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgSubListeners:Landroid/os/RemoteCallbackList;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v0, p2, :cond_4

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCalllogSubListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCalllogSubListeners:Landroid/os/RemoteCallbackList;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 15
    :cond_4
    :goto_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    .line 16
    invoke-virtual {v1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->getSubscription(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 17
    :try_start_0
    invoke-interface {p1, v1}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;->onSubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public searchCallLog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->search(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public searchContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchContact: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->searchContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public searchMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->search(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public searchRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchGroupInfo: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->searchRcs(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public setPushTokenAll(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setPushTokenAll:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPushToken:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->setPushToken(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subscribeAll()V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "subscribeAll:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    if-ge v1, v2, :cond_3

    .line 3
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getServiceAgentArray(I)[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isRegisterRequired()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->register()V

    goto :goto_2

    .line 6
    :cond_0
    sget-object v5, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Subscription is already ongoing."

    invoke-static {v5, v1, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public unregisterSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v0, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgSubListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    if-ne v0, p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCalllogSubListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public unsubscribeAll()V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unsubscribeAll:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 3
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->getServiceAgentArray(I)[Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->isDeregisterRequired()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v5, v0}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager$SubscriptionAgent;->deregister(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateCalllog(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCalllogFlag: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mCallMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public updateCalllogSync(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mSubMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/SubscriptionAgentManager;->updateCallLogSync(Ljava/util/Set;)V

    return-void
.end method

.method public updateContact(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContact: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->updateContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public updateMsg(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMsgFlag: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mMsgMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public updateRcs(ILcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRcs: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/AgentManagerFactory;->mRcsMgrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method
