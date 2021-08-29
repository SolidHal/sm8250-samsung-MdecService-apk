.class public Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;
.super Lcom/samsung/android/mdecservice/nms/util/StateMachine;
.source "RcsAgentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsAgentBase"

.field protected static final MA_EVENT_PAYLOAD_PROGRESS:I = 0x3ed

.field protected static final MA_EVENT_REQUEST:I = 0x1

.field protected static final MA_EVENT_REQUEST_BULK_OP:I = 0x2

.field protected static final MA_EVENT_RESPONSE_FAIL:I = 0x3ec

.field protected static final MA_EVENT_RESPONSE_SUCCESS_BINARY_DATA:I = 0x3eb

.field protected static final MA_EVENT_RESPONSE_SUCCESS_JSON:I = 0x3e9

.field protected static final MA_EVENT_RESPONSE_SUCCESS_STR:I = 0x3ea

.field protected static final MCXT_RCS:Ljava/lang/String; = "rcs"


# instance fields
.field protected isSearchOp:Z

.field protected mBotServiceId:Ljava/lang/String;

.field protected mBulkResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field protected mCif:Ljava/lang/String;

.field protected mContactCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCorrelationId:Ljava/lang/String;

.field protected mCorrelationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCorrelationTag:Ljava/lang/String;

.field protected mCorrelationTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeviceId:Ljava/lang/String;

.field protected mFlag:Ljava/lang/String;

.field protected mFlagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFromCursor:Ljava/lang/String;

.field protected mIsRelay:Z

.field protected mMinDate:Ljava/lang/String;

.field protected mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

.field protected mMsgRcsAttrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected mObjectId:Ljava/lang/String;

.field protected mPhoneId:I

.field protected mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

.field protected mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

.field protected mRcsEnabled:Z

.field protected mRcsGroupInfoAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mRcsOkHttpCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

.field protected mRelayType:Ljava/lang/String;

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

.field protected mSearchTime:J

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

.field protected mTimeStamp:Ljava/lang/String;

.field protected mUploadStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;)V
    .locals 3

    const-string v0, "RcsAgent -"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttrList:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationIdList:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTagList:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrlList:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    const-string v1, ""

    .line 18
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFromCursor:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->isSearchOp:Z

    .line 21
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactCapabilities:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mDeviceId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactList:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSearchTime:J

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsEnabled:Z

    .line 29
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTimeStamp:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCif:Ljava/lang/String;

    .line 32
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$1;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    .line 33
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$2;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsOkHttpCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 35
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    .line 36
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;)Lcom/samsung/android/mdecservice/nms/util/IState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->getCurrentState()Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected logEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->logEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected logEvent(Lorg/json/JSONObject;)V
    .locals 9

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRelayOperation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Big Data Logging, isRelayOperation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RcsAgentBase"

    invoke-static {v4, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v5, "UpdateRequest"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    xor-int/lit8 p1, v0, 0x1

    .line 8
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsUpdate(Z)V

    return-void

    .line 9
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    const-string v5, "chat-message"

    if-eqz v3, :cond_8

    if-nez p1, :cond_4

    const-string p1, "response json object is null"

    .line 10
    invoke-static {v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_0
    const-string v3, "bulkResponseList"

    .line 11
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "response"

    .line 12
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    move p1, v1

    .line 13
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_b

    .line 14
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 15
    instance-of v4, v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    if-eqz v4, :cond_7

    .line 16
    check-cast v3, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 17
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileSize()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :cond_5
    if-nez v0, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    .line 22
    :goto_3
    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-eqz p1, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileSize()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 29
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_9
    xor-int/2addr v0, v2

    .line 30
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 31
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 32
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    xor-int/lit8 v1, v0, 0x1

    const-string v3, "gc"

    const-string v4, ""

    .line 33
    invoke-static {v1, v3, v4, v4}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method

.method protected makeFailureReport(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const-string v1, "RcsAgentBase"

    const-string v2, "makeFailureReport:"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "BulkPostRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "BulkUpdateRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "BulkDeleteRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->isSearchOp:Z

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->markSearchCompleted(Ljava/lang/String;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    .line 20
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->translateErrorCodeToCmcError(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)I

    move-result v3

    .line 21
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->translateReasonToCmcFailureReason(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    .line 22
    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onRequestFailed(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public relayRequest(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getRelayType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mDeviceId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getRelayRequestList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactList:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getSearchTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSearchTime:J

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public relayResponse(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getRelayType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mDeviceId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getRelayResponseList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactList:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getRcsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsEnabled:Z

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method protected request(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRcs: request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgentBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->isRelay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlagList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationIdList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationIdList:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTagList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTagList:Ljava/util/List;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttributeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttrList:Ljava/util/List;

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsGroupAttributeList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    .line 16
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupChatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRelayOpTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrlList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrlList:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationIdList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationIdList:Ljava/util/List;

    const-string v0, "correlation_id"

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTagList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTagList:Ljava/util/List;

    const-string v0, "correlation_tag"

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrlList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrlList:Ljava/util/List;

    const-string v0, "res_url"

    goto :goto_0

    :cond_3
    const-string v0, ""

    .line 27
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 30
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestBulkOperation(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
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
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBulkOperation: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgentBase"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const-string p2, "Each SyncEvent should have same tid"

    invoke-static {v2, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 10
    :cond_1
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object v1

    .line 12
    instance-of v3, p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    const-string v4, ""

    if-eqz v3, :cond_2

    .line 13
    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getCorrelationId()Ljava/lang/String;

    move-result-object p2

    move-object v5, v4

    move-object v4, p2

    move-object p2, v5

    goto :goto_2

    .line 14
    :cond_2
    instance-of v3, p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    if-eqz v3, :cond_3

    .line 15
    check-cast p2, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBotServiceId()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v4

    .line 16
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "correlation_id"

    .line 17
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "correlation_tag"

    .line 19
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "service_id"

    .line 21
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestContact(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getContactList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getContactList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactCapabilities:Ljava/util/List;

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestRcsSearch(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getMinDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getFromCursor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFromCursor:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public requestforCif(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestforCif: request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgentBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getRequestReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBotServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTimeStamp:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getCif()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCif:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getMinDate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method
