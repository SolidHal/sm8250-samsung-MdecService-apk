.class public Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;
.super Lcom/samsung/android/mdecservice/nms/util/StateMachine;
.source "CallLogAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;,
        Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;,
        Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;,
        Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$DefaultState;,
        Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;
    }
.end annotation


# static fields
.field private static final CA_EVENT_REQUEST:I = 0x1

.field private static final CA_EVENT_REQUEST_BULK_OP:I = 0x2

.field private static final CA_EVENT_REQUEST_SEARCH:I = 0x3

.field private static final CA_EVENT_RESPONSE_FAIL:I = 0x3eb

.field private static final CA_EVENT_RESPONSE_SUCCESS_JSON:I = 0x3e9

.field private static final CA_EVENT_RESPONSE_SUCCESS_STR:I = 0x3ea

.field private static final LOG_TAG:Ljava/lang/String; = "CallLogAgent"


# instance fields
.field private final FROMPD:Ljava/lang/String;

.field private mBulkResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogAgentMan:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

.field private mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

.field private mCorrelationTag:Ljava/lang/String;

.field private final mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private mFlag:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mMinDate:Ljava/lang/String;

.field private mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

.field private mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mPhoneId:I

.field private mRequestReason:Ljava/lang/String;

.field private final mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private mResourceUrl:Ljava/lang/String;

.field private final mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private final mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;

.field private mSyncEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesforBigdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;)V
    .locals 1

    const-string v0, "CallLogAgent -"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestReason:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCorrelationTag:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mResourceUrl:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mFlag:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mId:Ljava/lang/String;

    const-string v0, "frompd"

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->FROMPD:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mBulkResponseList:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mSyncEventList:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mValuesforBigdata:Ljava/util/List;

    .line 12
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mMinDate:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$DefaultState;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$DefaultState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 14
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 15
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 16
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;

    .line 17
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    .line 18
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    .line 19
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 20
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCallLogAgentMan:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->initState()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mSyncEventList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mValuesforBigdata:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->logPostEvent(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCallLogAgentMan:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->logUpdateEvent(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mBulkResponseList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->complete()V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mMinDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mFlag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCorrelationTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    return-object p0
.end method

.method private complete()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCallLogAgentMan:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getCallLogAgents()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agent count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCallLogAgentMan:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getCallLogAgents()Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager$CallLogAgentList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->setDestState(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    return-void
.end method

.method private initState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->addState(Lcom/samsung/android/mdecservice/nms/util/State;Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->setInitialState(Lcom/samsung/android/mdecservice/nms/util/State;)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->start()V

    return-void
.end method

.method private logPostEvent(Landroid/content/ContentValues;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "frompd"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "logtype"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventLogPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private logUpdateEvent(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventLogUpdate(Z)V

    return-void
.end method

.method private setDestState(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestState to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->REQUEST:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mResposnseState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->SEARCHING:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mSearchingState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected State : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mDefaultState:Lcom/samsung/android/mdecservice/nms/util/State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->transitionTo(Lcom/samsung/android/mdecservice/nms/util/IState;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public request(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestReason:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mFlag:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCorrelationTag:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mResourceUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mId:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mValuesforBigdata:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mId:Ljava/lang/String;

    const-string v3, "_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logtype"

    .line 14
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDuration()Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    .line 17
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDisposition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 20
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 22
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 23
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "frompd"

    .line 24
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mValuesforBigdata:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SearchRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getMinDate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mMinDate:Ljava/lang/String;

    .line 28
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestBulkOperation(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBulkOperation: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mSyncEventList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestReason:Ljava/lang/String;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mBulkResponseList:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mValuesforBigdata:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8
    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getId()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v2, "_id"

    if-nez p2, :cond_1

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mBulkResponseList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mRequestReason:Ljava/lang/String;

    const-string v0, "BulkPostRequest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    if-eqz p2, :cond_0

    .line 14
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 15
    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logtype"

    .line 18
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDuration()Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    .line 21
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDisposition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 24
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mCalllogAttr:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "frompd"

    .line 28
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->mValuesforBigdata:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method
