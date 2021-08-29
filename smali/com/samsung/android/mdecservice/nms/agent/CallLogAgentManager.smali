.class public Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;
.super Ljava/lang/Object;
.source "CallLogAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallLogAgentMgr"

.field private static sCallLogHandler:Landroid/os/Handler;

.field private static sCallLogHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

.field private mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

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
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 6
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    .line 7
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    invoke-direct {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    return-void
.end method

.method private createAgent()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent count before creation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgentMgr"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getCallLogHandler()Landroid/os/Handler;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;-><init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_0

    .line 4
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    const-string v3, "IMPORTANT:: if this log is shown on action, somewhereCallLogAgent.complete() is not done for the request. find that leak and fix it"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove the oldest dangling agent, agent count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

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
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 10
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAgent: agent count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static getCallLogHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->sCallLogHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MsgHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->sCallLogHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->sCallLogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->sCallLogHandler:Landroid/os/Handler;

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->sCallLogHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private publishListEvents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
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
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    const-string v1, "CallLogAgentMgr"

    const-string v2, "publishListEvents:"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    const-string v0, "BulkPostRequest"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 7
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    const-string p1, "BulkUpdateRequest"

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 10
    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 11
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_5

    const-string p1, "BulkAttributeUpdateRequest"

    .line 13
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 14
    :cond_5
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 15
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 16
    :cond_6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_7

    const-string p1, "BulkDeleteRequest"

    .line 17
    invoke-virtual {p0, p4, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public bulkOperation(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->requestBulkOperation(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

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
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    const-string v0, "CallLogAgentMgr"

    const-string v1, "delete: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public get(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

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
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    const-string v0, "CallLogAgentMgr"

    const-string v1, "get: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getCallLogAgents()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mCallLogAgents:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    return-object v0
.end method

.method public getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    return-object v0
.end method

.method public handleListEvents(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x3b625a51

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v8, :cond_3

    const v8, 0x17c3bd66

    if-eq v7, v8, :cond_2

    const v8, 0x64b98e44

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "DeleteRequest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v9

    goto :goto_1

    :cond_2
    const-string v7, "UpdateRequest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v6, v10

    goto :goto_1

    :cond_3
    const-string v7, "PostRequest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    :cond_4
    :goto_1
    if-eqz v6, :cond_9

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_6
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 10
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    .line 11
    :cond_7
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_8
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_9
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->publishListEvents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    const-string v0, "CallLogAgentMgr"

    const-string v1, "post: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    return-void
.end method

.method public search(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

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
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    const-string v0, "CallLogAgentMgr"

    const-string v1, "search: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->mPhoneId:I

    const-string v0, "CallLogAgentMgr"

    const-string v1, "updateFlag: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
