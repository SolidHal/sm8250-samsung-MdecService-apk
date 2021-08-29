.class Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "MessageAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void
.end method

.method private processMaEventRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostMmsNotiRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostMmsRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendPostMmsRequest()V

    goto/16 :goto_4

    .line 5
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_WTIHOUT_PAYLOAD_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne v0, v1, :cond_c

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendPostRequest()V

    goto/16 :goto_4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "GetRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendGetRequest()V

    goto/16 :goto_4

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "UpdateRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "UpdateMmsRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "DeleteRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "DeleteMmsRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostNotiRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostMsgDefaultSettingRequest"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostMsgAppSettingRequest"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostMsgAppSettingExtRequest"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostAlertNotiRequest"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostDdmMsgRequest"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "GetMsgAppSettingRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendGetRequest()V

    goto :goto_4

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "SearchRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendSearchRequest()V

    goto :goto_4

    .line 21
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendPostNotiRequest()V

    goto :goto_4

    .line 22
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendDeleteRequest()V

    goto :goto_4

    .line 23
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendUpdateRequest()V

    goto :goto_4

    .line 24
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendPostRequest()V

    :cond_c
    :goto_4
    return-void
.end method

.method private sendBulkOperationRequest()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "box:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "BulkUpdateRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v3, "BulkPostMmsRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v3, "BulkPostDdmMsgRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v3, "BulkPostRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v3, "BulkDeleteRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    move-object v1, v3

    move-object v2, v1

    goto/16 :goto_3

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ddmMsg/operations/bulkCreation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;-><init>(Ljava/util/List;)V

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;->encodeJSON()V

    move-object v2, v1

    move-object v1, v3

    goto :goto_3

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/objects/operations/bulkDelete"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->DELETE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    goto :goto_2

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/objects/operations/bulkUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    goto :goto_2

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/objects/operations/bulkCreation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    :goto_2
    move-object v2, v3

    :goto_3
    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    sget-object v5, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne v4, v5, :cond_5

    .line 18
    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    goto :goto_5

    .line 19
    :cond_5
    sget-object v2, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne v4, v2, :cond_8

    const-string v2, "application/json"

    .line 20
    invoke-static {v2}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lf/a0;->create(Lf/u;Ljava/lang/String;)Lf/a0;

    move-result-object v1

    .line 22
    new-instance v2, Lf/v$a;

    invoke-direct {v2}, Lf/v$a;-><init>()V

    sget-object v4, Lf/v;->f:Lf/u;

    .line 23
    invoke-virtual {v2, v4}, Lf/v$a;->d(Lf/u;)Lf/v$a;

    const-string v4, "root-fields"

    .line 24
    invoke-virtual {v2, v4, v3, v1}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    .line 25
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mSyncEventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    .line 26
    check-cast v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getPayLoadInfos()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generateMultipartFromPayloadInfos(Ljava/util/List;)Lf/a0;

    move-result-object v4

    const-string v5, "attachments"

    .line 27
    invoke-virtual {v2, v5, v3, v4}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    goto :goto_4

    .line 28
    :cond_6
    invoke-virtual {v2}, Lf/v$a;->c()Lf/v;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMmsCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkDdmMsgObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v1, v0, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 32
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x678cb5ae -> :sswitch_4
        0x130d3d -> :sswitch_3
        0x92d9bc9 -> :sswitch_2
        0x19f3dece -> :sswitch_1
        0x4b7d7974 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendDeleteRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendGetRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setGetRequest()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->GET:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    :cond_1
    return-void
.end method

.method private sendPostMmsRequest()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setFlagList(Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->setCorrelationId(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setCorrelationTag(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->encodeJSON()V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 10
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/objects"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPayloadInfos:Ljava/util/List;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generateMultipartFromPayloadInfos(Ljava/util/List;)Lf/a0;

    move-result-object v2

    const-string v3, "application/json"

    .line 12
    invoke-static {v3}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lf/a0;->create(Lf/u;Ljava/lang/String;)Lf/a0;

    move-result-object v0

    .line 14
    new-instance v3, Lf/v$a;

    invoke-direct {v3}, Lf/v$a;-><init>()V

    sget-object v4, Lf/v;->f:Lf/u;

    invoke-virtual {v3, v4}, Lf/v$a;->d(Lf/u;)Lf/v$a;

    const-string v4, "root-fields"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    const-string v0, "attachments"

    .line 15
    invoke-virtual {v3, v0, v5, v2}, Lf/v$a;->a(Ljava/lang/String;Ljava/lang/String;Lf/a0;)Lf/v$a;

    invoke-virtual {v3}, Lf/v$a;->c()Lf/v;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMmsCallBack:Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;

    invoke-interface {v3, v0, v1, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    return-void
.end method

.method private sendPostNotiRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostNotiRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "box:"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->setAction(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNotiList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->setNotifications(Ljava/util/List;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->encodeJSON()V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v4, v4, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/notifications/operations/currentNoti"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v3, "PostMsgDefaultSettingRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;-><init>()V

    .line 12
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->setAction(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-boolean v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgDefualtSetting:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->setStatus(Z)V

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->encodeJSON()V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v4, v4, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 16
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/notifications/operations/settingDefault"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    goto/16 :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v3, "PostMsgAppSettingRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;-><init>()V

    .line 21
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAppSetting:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->setAppSettings(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->encodeJSON()V

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v4, v4, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 24
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/notifications/operations/msgAppSetting"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    goto/16 :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v3, "PostMsgAppSettingExtRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingExtObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingExtObject;-><init>()V

    .line 29
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAppSetting:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingExtObject;->setAppSettings(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingExtObject;->encodeJSON()V

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v4, v4, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 32
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/notifications/operations/msgAppSettingExt"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingExtObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    goto/16 :goto_0

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v3, "PostAlertNotiRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;-><init>()V

    .line 37
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->getObj()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->setMmsNotiObj(Lorg/json/JSONObject;)V

    .line 38
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->getNotiType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->setNotiType(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->encodeJSON()V

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v4, v4, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 41
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/notifications/operations/alertNoti"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "PostDdmMsgRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mDdmMsg:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->setDdmMsg([B)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mDdmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->setDdmType(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->encodeJSON()V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ddmMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private sendPostRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setFlagList(Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setCorrelationTag(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mAgentType:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->MMS_WTIHOUT_PAYLOAD_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne v2, v3, :cond_0

    .line 8
    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->setCorrelationId(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->encodeJSON()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 11
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v3, "PostMmsNotiRequest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tempObjects"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/objects"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v4, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v2, v0, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    .line 17
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->NMS_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    :cond_2
    return-void
.end method

.method private sendSearchRequest()V
    .locals 2

    const-string v0, "MsgAgent"

    const-string v1, "sendSearchRequest:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->SEARCHING:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private sendUpdateRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/Attribute;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;->addFlagToList(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;->encodeJSON()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mResourceUrl:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase$ServiceAgentState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$200(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$300(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->sendBulkOperationRequest()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$RequestState;->processMaEventRequest()V

    :goto_0
    return v0
.end method
