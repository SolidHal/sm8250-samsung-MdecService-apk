.class public Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;
.super Ljava/lang/Object;
.source "RcsAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsAgentMgr"

.field private static sRcsHandler:Landroid/os/Handler;

.field private static sRcsHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

.field private mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private final mPhoneId:I

.field private mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;


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
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 6
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    .line 7
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    invoke-direct {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    return-void
.end method

.method private createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent count before creation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentMgr"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;-><init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_0

    .line 4
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v3, "IMPORTANT:: if this log is shown on action, somewhereRcsAgent.complete() is not done for the request. find that leak and fix it"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove the oldest dangling agent, agent count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

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
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 10
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAgent: agent count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->sRcsHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RcsHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->sRcsHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->sRcsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->sRcsHandler:Landroid/os/Handler;

    .line 5
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->sRcsHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method private publishListEvents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    invoke-direct {p0, p1, p4, p5, p7}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->publishListEventsForPost(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2
    invoke-direct {p0, p2, p6}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->publishListEventsForUpdate(Ljava/util/List;Ljava/util/List;)V

    .line 3
    invoke-direct {p0, p3, p8}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->publishListEventsForDelete(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private publishListEventsForDelete(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishListEvents: listToDelete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listToDeleteBio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentMgr"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    const-string v0, "BulkDeleteRequest"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->doCifOperation(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    const-string p1, "BulkPostCifRequest"

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private publishListEventsForPost(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
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
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishListEvents: listToPost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listToPostStateMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listToPostGio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listToPostBio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentMgr"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "BulkPostRequest"

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x14

    if-lt v3, v5, :cond_0

    .line 9
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    .line 14
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 15
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 16
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_5

    const-string p1, "BulkPostStateRequest"

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 19
    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 20
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 21
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_7

    const-string p1, "BulkPostGroupInfoRequest"

    .line 22
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    :cond_7
    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 24
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->doCifOperation(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_4

    .line 25
    :cond_8
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_9

    const-string p1, "BulkPostCifRequest"

    .line 26
    invoke-virtual {p0, p4, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private publishListEventsForUpdate(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishListEvents: listToUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listToUpdateGio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentMgr"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_e

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 10
    iget v8, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleListEvents: se.getRequestReason()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-static {v2, v8, v9}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "\\Failed"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v9, v11

    goto :goto_1

    :sswitch_1
    const-string v10, "\\Delivered"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v9, v12

    goto :goto_1

    :sswitch_2
    const-string v10, "\\Answered"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v9, v1

    goto :goto_1

    :sswitch_3
    const-string v10, "\\Seen"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v9, v3

    :cond_1
    :goto_1
    if-eqz v9, :cond_5

    if-eq v9, v3, :cond_4

    if-eq v9, v12, :cond_3

    if-eq v9, v11, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_5
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const-string v2, "BulkUpdateRequest"

    if-ne p1, v3, :cond_7

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_2

    .line 20
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_8

    .line 21
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 22
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 23
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_3

    .line 24
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_a

    .line 25
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 26
    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_b

    .line 27
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_4

    .line 28
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_c

    .line 29
    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 30
    :cond_c
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_d

    .line 31
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_5

    .line 32
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_e

    .line 33
    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    .line 34
    :cond_e
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_f

    .line 35
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_6

    .line 36
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_10

    const-string p1, "BulkUpdateGroupInfoRequest"

    .line 37
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->bulkOperation(Ljava/util/List;Ljava/lang/String;)V

    :cond_10
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x537b4f7 -> :sswitch_3
        0x2eab9d59 -> :sswitch_2
        0x33652788 -> :sswitch_1
        0x7fb8cbb9 -> :sswitch_0
    .end sparse-switch
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
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->requestBulkOperation(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bulkPostRcs(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    const-string v1, "RcsAgentMgr"

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationIdList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "bulkPostRcs: mandatory fields are missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "bulkPostRcs: invalid request"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public delete(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    const-string v1, "RcsAgentMgr"

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resource url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrlList()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "delete: mandatory fields are missing"

    .line 8
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V

    return-void

    .line 10
    :cond_2
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "delete: invalid request"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public deleteContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    const-string v1, "RcsAgentMgr"

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getContactList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "deleteContact: mandatory fields are missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->requestContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "deleteContact: invalid request"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public doCifOperation(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->requestforCif(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "RcsAgentMgr"

    const-string v1, "doCifOperation: request reason is missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public get(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "RcsAgentMgr"

    const-string v1, "get: invalid request"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    return-object v0
.end method

.method public getRcsAgents()Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mRcsAgents:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    return-object v0
.end method

.method public handleListEvents(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleListEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentMgr"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    if-nez v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleListEvents: se.getRequestReason()"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v2, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v12, "PostGroupInfoRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v12, "DeleteRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v12, "PostStateRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v12, "UpdateRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v12, "PostRcsRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v12, "DeleteCifRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_6
    const-string v12, "PostCifRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v12, "UpdateGroupInfoRequest"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x5

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 17
    :pswitch_0
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :pswitch_1
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :pswitch_2
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :pswitch_3
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 21
    :pswitch_4
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 22
    :pswitch_5
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :pswitch_6
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :pswitch_7
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move-object v3, p0

    .line 25
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->publishListEvents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 26
    :cond_4
    :goto_2
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "request syncList invalid"

    invoke-static {v2, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73a566f5 -> :sswitch_7
        -0x4be95571 -> :sswitch_6
        -0x3c2a8226 -> :sswitch_5
        -0x2ec70753 -> :sswitch_4
        0x17c3bd66 -> :sswitch_3
        0x5326f19e -> :sswitch_2
        0x64b98e44 -> :sswitch_1
        0x7b16f2e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public post(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "RcsAgentMgr"

    const-string v1, "post: invalid request"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public postContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    const-string v1, "RcsAgentMgr"

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getContactList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "postContact: mandatory fields are missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->requestContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "postContact: invalid request"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public postRelayRequest(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->relayRequest(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "RcsAgentMgr"

    const-string v1, "postRelayRequest: request reason is missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public postRelayResponse(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->relayResponse(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "RcsAgentMgr"

    const-string v1, "postRelayResponse: request reason is missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    return-void
.end method

.method public searchContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->requestContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "RcsAgentMgr"

    const-string v1, "searchContact: invalid request"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public searchRcs(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->requestRcsSearch(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "RcsAgentMgr"

    const-string v1, "searchRcs: invalid request"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public update(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    const-string v1, "RcsAgentMgr"

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resource url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlagList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsGroupAttributeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UpdateRequest"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BulkUpdateRequest"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrlList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string p1, "update: mandatory fields are missing"

    .line 14
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->request(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V

    return-void

    .line 16
    :cond_5
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "update: invalid request"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public updateContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->isInvalidSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)Z

    move-result v0

    const-string v1, "RcsAgentMgr"

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getContactList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "updateContact: mandatory fields are missing"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->createAgent()Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->requestContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->mPhoneId:I

    const-string v0, "updateContact: invalid request"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
