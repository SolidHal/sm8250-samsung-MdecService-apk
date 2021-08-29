.class public Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;
.super Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;
.source "RcsAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;,
        Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;,
        Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$DefaultState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsAgent"


# instance fields
.field private final mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mResponseState:Lcom/samsung/android/mdecservice/nms/util/State;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;-><init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;)V

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$DefaultState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 3
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 4
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mResponseState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 6
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    .line 7
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->initState()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->complete()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method private complete()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getRcsAgents()Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agent count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getRcsAgents()Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private initState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mResponseState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->setInitialState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->start()V

    return-void
.end method

.method private setDestState(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestState to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mResponseState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected State : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    :goto_0
    return-void
.end method
