.class public Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;
.super Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;
.source "MessageAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;,
        Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;,
        Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;,
        Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;,
        Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$DefaultState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MsgAgent"


# instance fields
.field private final mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mPayloadingState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;-><init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;)V

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$DefaultState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 3
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 4
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 5
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$PayloadingState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mPayloadingState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 6
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 8
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 9
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->initState()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->makeGetCompletedReport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method private complete()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getMessageAgents()Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agent count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getMessageAgents()Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager$MsgAgentList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private initState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mPayloadingState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->setInitialState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->start()V

    return-void
.end method

.method private isReadyToMakeGetCompletedReport(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MsgAgent"

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v3, "response string is malformed or outdated. drop report."

    invoke-static {v2, v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v3, "attr is malformed or outdated. drop report."

    invoke-static {v2, v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    move v0, v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object p1

    const-string v3, "\\Pending"

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    if-eqz p1, :cond_2

    .line 9
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v0, "Drop the relay request from the search result"

    invoke-static {v2, p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method private makeGetCompletedReport(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v3, "MsgAgent"

    const-string v4, "makeGetCompletedReport:"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "not read to make report. drop report."

    if-eqz v2, :cond_0

    .line 3
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    return-void

    .line 5
    :cond_0
    new-instance v2, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-direct {v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->parseJSON()V

    .line 7
    invoke-direct {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->isReadyToMakeGetCompletedReport(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 8
    iget v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pager-message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "0"

    if-nez v4, :cond_a

    .line 11
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v4

    const-string v6, "cmas-message"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 12
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v4

    const-string v6, "cb-message"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v4

    const-string v6, "wap-message"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 14
    :cond_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->checkRCSMessage(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    new-instance v9, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;

    invoke-direct {v9, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>(Ljava/lang/String;)V

    .line 16
    iget-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->parseJsonEle()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->parseJSON()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v1

    .line 17
    :goto_0
    sget-object v3, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne v1, v3, :cond_4

    .line 18
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v8, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v10

    iget-boolean v11, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    iget-boolean v12, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mIsDownload:Z

    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onGetRcsCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;Ljava/util/List;ZZ)V

    .line 19
    :cond_4
    iget-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    if-nez v1, :cond_c

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    goto/16 :goto_4

    .line 21
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v1

    const-string v4, "multimedia-message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mmsnoti-message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23
    :cond_6
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getPayLoadURL()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 25
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_WTIHOUT_PAYLOAD_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 26
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v13, v5

    .line 28
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v14

    const/4 v15, 0x0

    iget-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    move/from16 v16, v1

    .line 29
    invoke-interface/range {v6 .. v16}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onGetMmsCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V

    .line 30
    iget-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    if-nez v1, :cond_c

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    goto :goto_4

    .line 32
    :cond_8
    iget-boolean v4, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    if-nez v4, :cond_9

    .line 33
    sget-object v4, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object v4, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 34
    iget v4, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processStrResponse: for Mms, go get Mms message payload to url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadUrl:Ljava/lang/String;

    .line 36
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->PAYLOADING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_4

    .line 38
    :cond_9
    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getMmsForSearch(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;Ljava/lang/String;)V

    goto :goto_4

    .line 39
    :cond_a
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v10

    .line 40
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v12, v5

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v13

    iget-boolean v14, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    .line 41
    invoke-interface/range {v6 .. v14}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onGetCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Z)V

    .line 42
    iget-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    if-nez v1, :cond_c

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->complete()V

    :cond_c
    :goto_4
    return-void
.end method

.method private setDestState(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestState to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->PAYLOADING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mPayloadingState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->SEARCHING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 10
    :cond_3
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected State : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public requestGetMmsForSearch(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestGetMmsForSearch: payloadUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadUrl:Ljava/lang/String;

    const-string p2, "GetMmsPayloadRequest"

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    .line 6
    sget-object p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->PAYLOADING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
