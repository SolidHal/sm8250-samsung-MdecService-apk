.class public Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;
.super Lcom/samsung/android/mdecservice/nms/util/StateMachine;
.source "MessageAgentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MessageAgentBase"

.field protected static final MA_EVENT_REQUEST:I = 0x1

.field protected static final MA_EVENT_REQUEST_BULK_OP:I = 0x3

.field protected static final MA_EVENT_REQUEST_GET_PAYLOAD:I = 0x2

.field protected static final MA_EVENT_REQUEST_SEARCH:I = 0x4

.field protected static final MA_EVENT_RESPONSE_FAIL:I = 0x3eb

.field protected static final MA_EVENT_RESPONSE_SUCCESS_JSON:I = 0x3e9

.field protected static final MA_EVENT_RESPONSE_SUCCESS_POST_MMS:I = 0x3ec

.field protected static final MA_EVENT_RESPONSE_SUCCESS_STR:I = 0x3ea


# instance fields
.field protected final GET_OBJ:Ljava/lang/String;

.field protected isSearchOp:Z

.field protected mAction:Ljava/lang/String;

.field protected mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

.field protected mBigdataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field protected mBulkResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field protected mCorrelationId:Ljava/lang/String;

.field protected mCorrelationTag:Ljava/lang/String;

.field protected mDdmMsg:[B

.field protected mDdmType:Ljava/lang/String;

.field protected mFlag:Ljava/lang/String;

.field protected mIsDownload:Z

.field protected mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

.field protected mMinDate:Ljava/lang/String;

.field protected mMmsCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

.field protected mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

.field protected mMsgAppSetting:Ljava/lang/String;

.field protected mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

.field protected mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

.field protected mMsgDefualtSetting:Z

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected mNotiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPayloadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPayloadUrl:Ljava/lang/String;

.field protected mPhoneId:I

.field protected mRequestReason:Ljava/lang/String;

.field protected mResourceUrl:Ljava/lang/String;

.field protected mResourceUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSyncEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mTid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;)V
    .locals 2

    const-string v0, "MsgAgent -"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadUrl:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadInfos:Ljava/util/List;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mIsDownload:Z

    .line 13
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrlList:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAction:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNotiList:Ljava/util/List;

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgDefualtSetting:Z

    .line 19
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAppSetting:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    .line 21
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mDdmType:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mDdmMsg:[B

    .line 23
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMinDate:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    .line 25
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBigdataList:Ljava/util/List;

    const-string p1, "get-obj"

    .line 26
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->GET_OBJ:Ljava/lang/String;

    .line 27
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$1;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    .line 28
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$2;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMmsCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    .line 29
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 30
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 31
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected checkRCSMessage(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat-message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ft-message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "standalone-message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bot-chat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bot-ft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method protected deployBigDataPost()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBigdataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    const-string v3, "bd_msgtype"

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bd_attachtype"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bd_attachsize"

    .line 4
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventMsgPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected logEvent(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    const-string p2, "response"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xc8

    if-eq p3, p1, :cond_1

    const/16 p1, 0xc9

    if-eq p3, p1, :cond_1

    const/16 p1, 0xcc

    .line 1
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string p3, "GetRequest"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    if-eqz p1, :cond_3

    if-nez p4, :cond_2

    const-string p1, "MessageAgentBase"

    const-string p2, "response json object is null"

    .line 3
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    const-string p1, "bulkResponseList"

    .line 4
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    .line 8
    iget-object p4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 9
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p4

    const-string v0, "code"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected makeFailureReport(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string v1, "MessageAgentBase"

    const-string v2, "makeFailureReport:"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "\\Pending"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PendingRequest"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    :goto_0
    move-object v8, v0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "BulkPostRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 9
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "BulkUpdateRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v4

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 14
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "BulkDeleteRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;Ljava/util/List;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v4

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 19
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->translateErrorCodeToCmcError(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onRequestFailed(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public request(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageAgentBase"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->isDownload()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mIsDownload:Z

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BulkDeleteRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BulkUpdateRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PostMmsRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "bd_attachsize"

    const-string v4, "bd_attachtype"

    const-string v5, "bd_msgtype"

    const-string v6, ""

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getPayLoadInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadInfos:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    if-eqz v0, :cond_9

    .line 14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBigdataList:Ljava/util/List;

    const/4 v7, 0x0

    .line 16
    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    .line 17
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getPayloadSize()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 18
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getPayloadSize()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v7, v9

    .line 19
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    const-string v8, "lms"

    .line 20
    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-lez v7, :cond_4

    const-string v8, "mms"

    .line 21
    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_5

    const-string v6, "multi"

    :cond_5
    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBigdataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    if-eqz v0, :cond_9

    .line 28
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBigdataList:Ljava/util/List;

    const-string v2, "sms"

    .line 30
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBigdataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SearchRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getMinDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMinDate:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->isSearchOp:Z

    goto :goto_3

    .line 37
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrlList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrlList:Ljava/util/List;

    .line 38
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->setMmsAgent(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestBulkOperation(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 4
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
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBulkOperation: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isPayloading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageAgentBase"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 6
    instance-of v1, v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    if-eqz v1, :cond_2

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string p2, "Each SyncEvent should have same tid"

    invoke-static {v2, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 11
    :cond_1
    :goto_1
    move-object p2, v0

    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getCorrelationId()Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "correlation_id"

    .line 15
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "correlation_tag"

    .line 17
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 19
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    :cond_6
    const/4 p1, 0x3

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestForNoti(Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestForNoti: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageAgentBase"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PostNotiRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAction:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getNotiList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNotiList:Ljava/util/List;

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostMsgDefaultSettingRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAction:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getMsgDefaultSetting()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgDefualtSetting:Z

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostMsgAppSettingRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getMsgAppSetting()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAppSetting:Ljava/lang/String;

    goto/16 :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostMsgAppSettingExtRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getMsgAppSetting()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAppSetting:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostAlertNotiRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAction:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getMmsNotiInfo()Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GetMsgAppSettingRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "box:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 19
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/notifications/operations/msgAppSetting"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostDdmMsgRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mDdmType:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getDdmMsg()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mDdmMsg:[B

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getResourceUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    .line 24
    :cond_6
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestGetMmsForSearch(Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestGetMmsForSearch: payloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MessageAgentBase"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected setMmsAgent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PostMmsRequest"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UpdateMmsRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DeleteMmsRequest"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PostMmsNotiRequest"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_WTIHOUT_PAYLOAD_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadInfos:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_WTIHOUT_PAYLOAD_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    goto :goto_1

    .line 7
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 8
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAgentType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessageAgentBase"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
