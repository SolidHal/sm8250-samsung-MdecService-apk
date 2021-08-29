.class Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "RcsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V

    return-void
.end method

.method private getJsonObject(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setFlagList(Ljava/util/List;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->setCorrelationId(Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setCorrelationTag(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->encodeJSON()V

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const-string v0, "RcsAgent"

    const-string v1, "post: mandatory fields are missing"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getRequestBody()Lf/a0;
    .locals 15

    .line 1
    sget-boolean v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    const-string v1, "RcsAgent"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "content_uris"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequestBody from TP uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-object v2

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "invalid thumbnail file path"

    .line 8
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 9
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "invalid thumbnail file"

    .line 11
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4
    :goto_1
    const-string v0, "application/json"

    .line 12
    invoke-static {v0}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-direct {p0, v3}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->getJsonObject(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_5

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v4, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const/16 v5, 0x2bd

    const/4 v6, -0x1

    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    invoke-interface/range {v3 .. v14}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onRequestFailed(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    .line 15
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v4, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generateThumbNailPayloadRequestBody(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lf/a0;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v0, "attachmentBody is null"

    .line 16
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 17
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf/a0;->create(Lf/u;Ljava/lang/String;)Lf/a0;

    move-result-object v0

    .line 18
    new-instance v1, Lf/v$a;

    invoke-direct {v1}, Lf/v$a;-><init>()V

    sget-object v3, Lf/v;->f:Lf/u;

    invoke-virtual {v1, v3}, Lf/v$a;->d(Lf/u;)Lf/v$a;

    const-string v3, "root-fields"

    invoke-virtual {v1, v3, v2, v0}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getThumbFileName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Thumbnail"

    invoke-virtual {v1, v2, v0, v4}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    .line 20
    invoke-virtual {v1}, Lf/v$a;->c()Lf/v;

    move-result-object v0

    return-object v0
.end method

.method private postJsonRequestForBulk(Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendBulkCifRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x86b8fbf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x1ef89f0c

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "BulkDeleteCifRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_1
    const-string v2, "BulkPostCifRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT_HANDLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgent"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_3
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoDeleteObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoDeleteObject;-><init>(Ljava/util/List;)V

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoDeleteObject;->encodeJSON()V

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoDeleteObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    .line 7
    :cond_4
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;-><init>(Ljava/util/List;)V

    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;->encodeJSON()V

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkBotInfoPostObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendBulkDeleteRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDeleteObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrlList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDeleteObject;-><init>(Ljava/util/List;)V

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDeleteObject;->encodeJSON()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDeleteObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendBulkGroupInfoRequest()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "box:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x51b5ed30

    const/4 v5, 0x2

    if-eq v3, v4, :cond_2

    const v4, -0x3c277343

    if-eq v3, v4, :cond_1

    const v4, 0x60822b14

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "BulkPostGroupInfoRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_1
    const-string v3, "BulkUpdateGroupInfoRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_2
    const-string v3, "BulkPostStateRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_5

    if-eq v1, v5, :cond_4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT_HANDLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgent"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_4
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoUpdateObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoUpdateObject;-><init>(Ljava/util/List;)V

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoUpdateObject;->encodeJSON()V

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoUpdateObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/groupInfoObjects/operations/bulkUpdate"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 9
    :cond_5
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;-><init>(Ljava/util/List;)V

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;->encodeJSON()V

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkGroupInfoObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/groupInfoObjects/operations/bulkCreation"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_6
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;-><init>(Ljava/util/List;)V

    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;->encodeJSON()V

    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkStateMsgObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/stateMsg/operations/bulkCreation"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method

.method private sendBulkPostRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttrList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->setRcsMessageAttributeList(Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setFlagList(Ljava/util/List;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationIdList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->setCorrelationIdList(Ljava/util/List;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->encodeJSON()V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkRcsMessageObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendBulkRcsMsgRequest()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "BulkPostRequest"

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "BulkPostGroupInfoRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "BulkUpdateRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "BulkDeleteCifRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "BulkPostCifRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "BulkUpdateGroupInfoRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "BulkPostStateRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v1, "BulkDeleteRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT_HANDLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgent"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendBulkCifRequest()V

    return-void

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendBulkGroupInfoRequest()V

    return-void

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->DELETE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->RCS:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->postJsonRequestForBulk(Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;Ljava/lang/String;)V

    return-void

    .line 8
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->RCS:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 10
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->postJsonRequestForBulk(Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;Ljava/lang/String;)V

    return-void

    .line 11
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v6, v5, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v8, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->RCS:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget v5, v5, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-direct {v1, v6, v7, v8, v5}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "application/json"

    .line 15
    invoke-static {v5}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v5

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lf/a0;->create(Lf/u;Ljava/lang/String;)Lf/a0;

    move-result-object v5

    .line 17
    new-instance v6, Lf/v$a;

    invoke-direct {v6}, Lf/v$a;-><init>()V

    sget-object v7, Lf/v;->f:Lf/u;

    .line 18
    invoke-virtual {v6, v7}, Lf/v$a;->d(Lf/u;)Lf/v$a;

    const/4 v7, 0x0

    const-string v8, "root-fields"

    .line 19
    invoke-virtual {v6, v8, v7, v5}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    .line 20
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v5, v5, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 21
    check-cast v7, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 22
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ft-message"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 23
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getThumbFileName()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generateThumbNailPayloadRequestBody(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lf/a0;

    move-result-object v7

    const-string v9, "Thumbnail"

    .line 25
    invoke-virtual {v6, v9, v8, v7}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    goto :goto_2

    .line 26
    :cond_2
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v7

    const-string v8, "chat-message"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    .line 27
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    goto :goto_4

    .line 28
    :cond_4
    invoke-virtual {v6}, Lf/v$a;->c()Lf/v;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsOkHttpCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    .line 30
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x678cb5ae -> :sswitch_7
        -0x51b5ed30 -> :sswitch_6
        -0x3c277343 -> :sswitch_5
        -0x86b8fbf -> :sswitch_4
        0x130d3d -> :sswitch_3
        0x1ef89f0c -> :sswitch_2
        0x4b7d7974 -> :sswitch_1
        0x60822b14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendBulkUpdateRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkUpdateObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrlList:Ljava/util/List;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkUpdateObject;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkUpdateObject;->encodeJSON()V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkUpdateObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendDeleteContactRequest()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;

    .line 3
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->setContactIdList(Ljava/util/List;)V

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->encodeJSON()V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendDeleteRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    :cond_0
    return-void
.end method

.method private sendGetBinaryDataRequest()V
    .locals 7

    const-string v0, "RcsAgent"

    const-string v1, "sendGetBinaryDataRequest"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v1, "resource url null. GET Request ignored"

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_GET_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;

    const-string v0, "download_payload"

    invoke-direct {v6, v0}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPayloadProgress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsOkHttpCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendGetRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "RcsAgent"

    const-string v1, "resource url null. GET Request ignored"

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v1, v3, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendPayloadUploadStatus()V
    .locals 13

    const-string v0, "RcsAgent"

    const-string v1, "sendPayloadUploadStatus"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v1, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->getPayloadPartList()Ljava/util/List;

    move-result-object v2

    new-instance v9, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v8, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->encodeJSON()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    const-string v4, "PostRcsRequest"

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    :cond_0
    return-void

    :catch_0
    const-string v1, "can not add to json!"

    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const/16 v3, 0x2bd

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v11, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-boolean v12, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onRequestFailed(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V

    return-void
.end method

.method private sendPostCifRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCif:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->setCif(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->setTimeStamp(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->setBotServiceId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->encodeJSON()V

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v0, v1, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    :cond_0
    return-void
.end method

.method private sendPostContactRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->setContactCapabilities(Ljava/util/List;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->encodeJSON()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendPostGioRequest()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;-><init>(Ljava/util/List;)V

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeJSON()V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v5, v5, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getObjectId()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v2, v3, v1, v5}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v5, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v0, v1, v5, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->NMS_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    :cond_1
    return-void
.end method

.method private sendPostRequest()V
    .locals 10

    const-string v0, "RcsAgent"

    const-string v1, "sendPostRequest"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-eqz v2, :cond_a

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " attr type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "destinationUrl"

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$1;->$SwitchMap$com$samsung$android$mdecservice$nms$attribute$RcsMessageAttribute$AttrType:[I

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "PostRcsPayloadRequest"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->getRequestBody()Lf/a0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsOkHttpCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    const-string v4, "PostFtRequest"

    invoke-interface {v3, v0, v1, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    .line 11
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 12
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 13
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->NMS_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    goto/16 :goto_2

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->getJsonObject(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->getJsonObject(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    .line 17
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getImdnMessageID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 20
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    goto/16 :goto_2

    .line 21
    :cond_3
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 22
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->NMS_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    goto/16 :goto_2

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendPayloadUploadStatus()V

    goto/16 :goto_2

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iput-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 26
    iput-boolean v4, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    .line 27
    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v5, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v6, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    new-instance v9, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;

    const-string v0, "upload_payload"

    invoke-direct {v9, v0}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPayloadProgress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;)V

    .line 28
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v4, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/mdecservice/nms/agent/a;

    invoke-direct {v4, p0}, Lcom/samsung/android/mdecservice/nms/agent/a;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressRequestBody;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;)V

    :cond_6
    if-nez v0, :cond_8

    .line 29
    sget-boolean v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    if-eqz v0, :cond_7

    .line 30
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lf/a0;->create(Lf/u;Ljava/io/File;)Lf/a0;

    move-result-object v0

    goto :goto_1

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generatePayloadRequestBodyFromUri(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Lf/u;)Lf/a0;

    move-result-object v0

    .line 32
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 33
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsOkHttpCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-interface {v2, v0, v4, v3, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    .line 35
    :cond_9
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 37
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    goto :goto_2

    .line 38
    :cond_a
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendPostGioRequest()V

    goto :goto_2

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v1, "/payload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendPayloadUploadStatus()V

    :cond_c
    :goto_2
    return-void
.end method

.method private sendRelayRequest()V
    .locals 5

    const-string v0, "RcsAgent"

    const-string v1, "sendRelayRequest"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->setDeviceId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    const-string v2, "rcs_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    const-string v2, "rcscapa_search"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-wide v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mSearchTime:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->setSearchTime(J)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->setContactList(Ljava/util/List;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->setRelayType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->encodeJSON()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    .line 11
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/relayrequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendRelayResponse()V
    .locals 5

    const-string v0, "RcsAgent"

    const-string v1, "sendRelayResponse"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->setDeviceId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->setRelayType(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRelayType:Ljava/lang/String;

    const-string v2, "rcs_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-boolean v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->setRcsEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->setContactList(Ljava/util/List;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->encodeJSON()V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    .line 10
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/relayresponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendSearchCifRequest()V
    .locals 0

    return-void
.end method

.method private sendSearchContactRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;-><init>(Z)V

    const-string v1, "2017-01-01T01:01:01.001Z"

    .line 2
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setDate(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->encodeJSON()V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget v3, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendSearchRcsRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;-><init>(Z)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2017-01-01T01:01:01.001Z"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setDate(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setDate(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFromCursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setFromCursor(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->encodeJSON()V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendUpdateContactRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mContactCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->setContactCapabilities(Ljava/util/List;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->encodeJSON()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/AgentUtil;->getRcsDestinationUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendUpdateRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RcsAgent"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    const-string v2, "file_unavailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "send file unavailable status"

    .line 2
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/payload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    const-string v1, "pending"

    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    const-string v1, "PostRcsRequest"

    .line 5
    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendPayloadUploadStatus()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-eqz v3, :cond_1

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;

    invoke-direct {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/Attribute;)V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->addFlagToList(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttrList:Ljava/util/List;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttrList:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;-><init>(Ljava/util/List;)V

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->addFlagToList(Ljava/util/List;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsGroupInfoAttributeList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;-><init>(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 16
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlagList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->addFlagToList(Ljava/util/List;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 19
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->addFlagToList(Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-nez v0, :cond_6

    const-string v0, "msgObj is NULL"

    .line 21
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->encodeJSON()V

    .line 23
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 24
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsUpdateObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase$ServiceAgentState;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public synthetic a(JJZ)V
    .locals 14

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;

    const-string v13, "upload_payload"

    move-object v7, v1

    move-wide v8, p1

    move-wide/from16 v10, p3

    move/from16 v12, p5

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;-><init>(JJZLjava/lang/String;)V

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPayloadProgress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;)V

    return-void
.end method

.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$200(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$300(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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

    const-string v2, "RcsAgent"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT_HANDLED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendBulkRcsMsgRequest()V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "PostGroupInfoRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "DeleteRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "SearchStateMsgRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "PostContactRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "PostStateRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v4

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "SearchContactRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "BulkUpdateRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "RelayRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "UpdateRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "SearchRelayDataRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "GetRcsThumbRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "DeleteContactRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "BulkPostRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "GetRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "RelayResponse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "PostRcsRequest"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :sswitch_10
    const-string v1, "UpdateContactRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_11
    const-string v1, "SearchGroupInfoRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_12
    const-string v1, "DeleteCifRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_13
    const-string v1, "PostCifRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x17

    goto :goto_1

    :sswitch_14
    const-string v1, "SearchCifRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_15
    const-string v1, "GetRcsPayloadRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_16
    const-string v1, "BulkDeleteRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_17
    const-string v1, "UpdateGroupInfoRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 8
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendPostCifRequest()V

    goto :goto_2

    .line 9
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendRelayResponse()V

    goto :goto_2

    .line 10
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendRelayRequest()V

    goto :goto_2

    .line 11
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iput-boolean v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->isSearchOp:Z

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendSearchRcsRequest()V

    goto :goto_2

    .line 13
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendGetBinaryDataRequest()V

    goto :goto_2

    .line 14
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendSearchContactRequest()V

    goto :goto_2

    .line 15
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendDeleteContactRequest()V

    goto :goto_2

    .line 16
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendUpdateContactRequest()V

    goto :goto_2

    .line 17
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendPostContactRequest()V

    goto :goto_2

    .line 18
    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendBulkUpdateRequest()V

    goto :goto_2

    .line 19
    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendBulkDeleteRequest()V

    goto :goto_2

    .line 20
    :pswitch_b
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendBulkPostRequest()V

    goto :goto_2

    .line 21
    :pswitch_c
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendDeleteRequest()V

    goto :goto_2

    .line 22
    :pswitch_d
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendUpdateRequest()V

    goto :goto_2

    .line 23
    :pswitch_e
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendGetRequest()V

    goto :goto_2

    .line 24
    :pswitch_f
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->sendPostRequest()V

    :goto_2
    move v1, v4

    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73a566f5 -> :sswitch_17
        -0x678cb5ae -> :sswitch_16
        -0x61bda673 -> :sswitch_15
        -0x609cba69 -> :sswitch_14
        -0x4be95571 -> :sswitch_13
        -0x3c2a8226 -> :sswitch_12
        -0x358ad816 -> :sswitch_11
        -0x2f09d868 -> :sswitch_10
        -0x2ec70753 -> :sswitch_f
        -0x2cb8762e -> :sswitch_e
        -0xa11f587 -> :sswitch_d
        0x130d3d -> :sswitch_c
        0x1b40fa -> :sswitch_b
        0x61d5345 -> :sswitch_a
        0x6399e1c -> :sswitch_9
        0x17c3bd66 -> :sswitch_8
        0x300106de -> :sswitch_7
        0x4b7d7974 -> :sswitch_6
        0x4bd4e237 -> :sswitch_5
        0x5326f19e -> :sswitch_4
        0x5ddd0b2f -> :sswitch_3
        0x5de11c57 -> :sswitch_2
        0x64b98e44 -> :sswitch_1
        0x7b16f2e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
