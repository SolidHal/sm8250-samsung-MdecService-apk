.class public Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;
.super Ljava/lang/Object;
.source "MessageAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MsgAgentMgr"

.field private static sMsgHandler:Landroid/os/Handler;

.field private static sMsgHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

.field private mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

.field private mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private final mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 6
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    .line 7
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    invoke-direct {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    return-void
.end method

.method private createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent count before creation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgentMgr"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getMsgHandler()Landroid/os/Handler;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;-><init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_0

    .line 4
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v3, "IMPORTANT:: if this log is shown on action, somewhereMessageAgent.complete() is not done for the request. find that leak and fix it"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove the oldest dangling agent, agent count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    .line 7
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 10
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAgent: agent count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static getMsgHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->sMsgHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MsgHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->sMsgHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->sMsgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->sMsgHandler:Landroid/os/Handler;

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->sMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private publishListEvents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v1, "MsgAgentMgr"

    const-string v2, "publishListEvents:"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, "BulkPostRequest"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 5
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x64

    if-lt v0, v4, :cond_0

    .line 7
    invoke-virtual {p0, p2, v3, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 10
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_7

    .line 12
    invoke-virtual {p0, p2, v3, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, "BulkPostMmsRequest"

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x14

    if-lt v0, v4, :cond_4

    .line 18
    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 20
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 22
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 23
    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    .line 24
    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 25
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 26
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_9

    const-string p1, "BulkUpdateRequest"

    .line 27
    invoke-virtual {p0, p3, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    .line 28
    :cond_9
    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_a

    .line 29
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_4

    .line 30
    :cond_a
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_b

    const-string p1, "BulkDeleteRequest"

    .line 31
    invoke-virtual {p0, p4, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    .line 32
    :cond_b
    :goto_4
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_c

    .line 33
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->postNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_5

    .line 34
    :cond_c
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_d

    const-string p1, "BulkPostDdmMsgRequest"

    .line 35
    invoke-virtual {p0, p5, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_d
    :goto_5
    return-void
.end method


# virtual methods
.method public bulkOperation(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->requestBulkOperation(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "MsgAgentMgr"

    const-string v1, "delete: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public get(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "MsgAgentMgr"

    const-string v1, "get: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    return-object v0
.end method

.method public getMessageAgents()Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mMessageAgents:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    return-object v0
.end method

.method public getMmsForSearch(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->requestGetMmsForSearch(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string p2, "MsgAgentMgr"

    const-string v0, "getMmsForSearch: mandatory fields are missing"

    invoke-static {p2, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "MsgAgentMgr"

    const-string v1, "getNoti: request reason is missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetMsgAppSettingRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->requestForNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;)V

    return-void
.end method

.method public handleListEvents(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v1, "MsgAgentMgr"

    const-string v2, "handleListEvents:"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v6, v0

    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 9
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x1

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "DeleteRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x5

    goto :goto_1

    :sswitch_1
    const-string v10, "PostMmsNotiRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_2
    const-string v10, "UpdateRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x3

    goto :goto_1

    :sswitch_3
    const-string v10, "PostDdmMsgRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x7

    goto :goto_1

    :sswitch_4
    const-string v10, "UpdateMmsRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    :sswitch_5
    const-string v10, "DeleteMmsRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v9, 0x6

    goto :goto_1

    :sswitch_6
    const-string v10, "PostMmsRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v9, v11

    goto :goto_1

    :sswitch_7
    const-string v10, "PostRequest"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v9, v2

    :cond_1
    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :pswitch_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :pswitch_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v11

    goto/16 :goto_0

    .line 15
    :pswitch_4
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16
    :pswitch_5
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move-object v0, p0

    move-object v2, v6

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->publishListEvents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3b625a51 -> :sswitch_7
        -0x2989e6e4 -> :sswitch_6
        -0x19cb1399 -> :sswitch_5
        -0xba82dfb -> :sswitch_4
        -0x136945 -> :sswitch_3
        0x17c3bd66 -> :sswitch_2
        0x1de931c6 -> :sswitch_1
        0x64b98e44 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgAgentMgr"

    if-nez v0, :cond_0

    .line 3
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "post: request reason is missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 8
    :cond_1
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "post: mandatory fields are missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostMmsRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostMmsNotiRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;)V

    return-void

    .line 14
    :cond_5
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "postMms: mandatory fields are missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public postNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgAgentMgr"

    if-nez v0, :cond_0

    .line 3
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "postNoti: request reason is missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostNotiRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "postNoti: mandatory fields are missing"

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getNotiList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 7
    :cond_1
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    invoke-static {v1, p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PostMsgDefaultSettingRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 10
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    invoke-static {v1, p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PostMsgAppSettingRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getMsgAppSetting()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 13
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    invoke-static {v1, p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PostMsgAppSettingExtRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getMsgAppSetting()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 16
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    invoke-static {v1, p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PostAlertNotiRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getMmsNotiInfo()Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    move-result-object v0

    if-nez v0, :cond_7

    .line 19
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    invoke-static {v1, p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PostDdmMsgRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmMsg()[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 22
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    invoke-static {v1, p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 23
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->requestForNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    return-void
.end method

.method public search(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getMinDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "MsgAgentMgr"

    const-string v1, "search: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->mPhoneId:I

    const-string v0, "MsgAgentMgr"

    const-string v1, "updateFlag: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
