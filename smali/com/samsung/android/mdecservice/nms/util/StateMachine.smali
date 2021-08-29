.class public Lcom/samsung/android/mdecservice/nms/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;,
        Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;,
        Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/mdecservice/nms/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/mdecservice/nms/util/StateMachine;Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/mdecservice/nms/util/StateMachine;Lcom/samsung/android/mdecservice/nms/util/StateMachine$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method protected addLogRec(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1600(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1000(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1100(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v5

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1700(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)[Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1800(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$StateInfo;->state:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1900(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/State;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;->add(Lcom/samsung/android/mdecservice/nms/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/util/IState;Lcom/samsung/android/mdecservice/nms/util/IState;Lcom/samsung/android/mdecservice/nms/util/IState;)V

    return-void
.end method

.method protected final addState(Lcom/samsung/android/mdecservice/nms/util/State;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$800(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$800(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1400(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getLogRecSize()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getLogRec(I)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRec;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_0
    const-string p3, "NULL"

    .line 6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "curState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1000(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1100(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRec;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1600(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;->get(I)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRec;

    move-result-object p1

    return-object p1
.end method

.method public final getLogRecCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1600(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;->count()I

    move-result v0

    return v0
.end method

.method public final getLogRecSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1600(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;->size()I

    move-result v0

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected final hasDeferredMessages(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2000(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 5
    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected final hasDeferredMessages(ILjava/lang/Object;)Z
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2000(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 10
    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method protected final hasMessages(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public isDbg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2400(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Z

    move-result v0

    return v0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_1

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2100(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method protected onHalting()V
    .locals 0

    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onQuitting()V
    .locals 0

    return-void
.end method

.method protected final quit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2200(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)V

    return-void
.end method

.method protected final quitNow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2300(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)V

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final removeDeferredMessages(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2000(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 5
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final sendMessage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(III)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setDbg(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2500(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Z)V

    return-void
.end method

.method protected final setInitialState(Lcom/samsung/android/mdecservice/nms/util/State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$900(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Lcom/samsung/android/mdecservice/nms/util/State;)V

    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1600(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1600(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$LogRecords;->setSize(I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$2600(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1200(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Lcom/samsung/android/mdecservice/nms/util/IState;)V

    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1300(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1200(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Lcom/samsung/android/mdecservice/nms/util/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->mSmHandler:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$1500(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
