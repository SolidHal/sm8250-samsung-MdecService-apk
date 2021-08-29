.class Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "MessageAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void
.end method

.method private processJsonResponse(ILorg/json/JSONObject;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->abortDelayedSyncEventComplete(I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v2, "PostRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v2, "PostMmsRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v2, "PostMmsNotiRequest"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v0, "UpdateRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->parseJSON()V

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v2

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v3, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v4, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getObjectID()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v9

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v10, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 9
    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    .line 10
    invoke-static {v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventMsgUpdate(Z)V

    goto/16 :goto_3

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v0, "BulkPostRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 14
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto/16 :goto_3

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v0, "BulkDeleteRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 20
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 22
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto/16 :goto_3

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v0, "BulkUpdateRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 26
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto/16 :goto_3

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string p2, "PostNotiRequest"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string p2, "PostMsgDefaultSettingRequest"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string p2, "PostMsgAppSettingRequest"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string p2, "PostMsgAppSettingExtRequest"

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string p2, "PostAlertNotiRequest"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5
    :goto_0
    const-string v0, "reference"

    .line 34
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->parseJSON()V

    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    .line 39
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v3, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    iget-object v11, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const-string v8, "0"

    move v10, p1

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto :goto_2

    :cond_6
    const-string v0, "object"

    .line 40
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->parseJSON()V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v3, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v6, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "0"

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v8, p2

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v9, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    iget-object v11, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    move v10, p1

    .line 45
    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    .line 46
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->deployBigDataPost()V

    .line 47
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void
.end method

.method private processMmsResponse(ILjava/lang/String;)V
    .locals 12

    const/16 v0, 0x3eb

    const-string v1, "MsgAgent"

    if-eqz p2, :cond_7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "html"

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string p2, "Not proper content type"

    invoke-static {v1, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->abortDelayedSyncEventComplete(I)V

    .line 7
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v3, "PostMmsRequest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "reference"

    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;

    invoke-direct {v0, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->parseJSON()V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v3, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v6, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    iget-object v11, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const-string v8, "0"

    move v10, p1

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    goto :goto_1

    :cond_2
    const-string p2, "object"

    .line 13
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    new-instance p2, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->parseJSON()V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v6, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "0"

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v8, p2

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v9, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    iget-object v11, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    move v10, p1

    .line 18
    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    .line 19
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->deployBigDataPost()V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string p2, "JSONException"

    invoke-static {v1, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v0, "BulkPostRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 26
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    .line 29
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void

    .line 30
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const-string p2, "No contents on response"

    invoke-static {v1, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    .line 32
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void
.end method

.method private processStrResponse(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->abortDelayedSyncEventComplete(I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "GetRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "DeleteRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object v0

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    iget-object v2, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mTid:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "GetMsgAppSettingRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->parseJSON()V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMessageAgentMan:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->getAppSettings()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;->onGetNotiCompleted(ILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$600(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$900(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " processMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "code"

    const-string v2, "response"

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->processMmsResponse(ILjava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->makeFailureReport(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 11
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "data"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->processStrResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 14
    check-cast p1, Landroid/os/Bundle;

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$ResponseState;->processJsonResponse(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
