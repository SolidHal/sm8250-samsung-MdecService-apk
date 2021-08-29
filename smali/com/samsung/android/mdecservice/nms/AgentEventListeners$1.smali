.class Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;
.super Ljava/lang/Object;
.source "AgentEventListeners.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/AgentEventListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkDeleteCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", successResponseList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", failureResponseList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", agent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne p5, p1, :cond_0

    const-string p1, "sms"

    goto :goto_0

    :cond_0
    const-string p1, "mms"

    :goto_0
    move-object v2, p1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object v0

    const-string v3, "delete"

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkPostCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", successResponseList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", failureResponseList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", agent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne p5, p1, :cond_0

    const-string p1, "sms"

    goto :goto_0

    :cond_0
    const-string p1, "mms"

    :goto_0
    move-object v2, p1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object v0

    const-string v3, "post"

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkUpdateCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", successResponseList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", failureResponseList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", agent="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne p5, p1, :cond_0

    const-string p1, "sms"

    goto :goto_0

    :cond_0
    const-string p1, "mms"

    :goto_0
    move-object v2, p1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object v0

    const-string v3, "update"

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "agent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AgentEventListeners"

    invoke-static {p4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne p7, p1, :cond_0

    const-string p1, "sms"

    goto :goto_0

    :cond_0
    const-string p1, "mms"

    :goto_0
    move-object v2, p1

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p4, "res_url"

    .line 5
    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_id"

    .line 6
    invoke-virtual {p1, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_tag"

    .line 7
    invoke-virtual {p1, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object v0

    const/4 v5, 0x0

    const-string v3, "delete"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onGetCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resourceUrl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move-object v4, p2

    invoke-static {p2, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " objectId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " correlationTag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " lastmodSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isSearchResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p8

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AgentEventListeners"

    .line 3
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wap-message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wap"

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cb-message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cb"

    goto :goto_0

    :cond_1
    const-string v0, "sms"

    :goto_0
    move-object v3, v0

    move-object v0, p0

    .line 6
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    invoke-static/range {v2 .. v12}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$400(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V

    return-void
.end method

.method public onGetMmsCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetMmsCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " objectId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " correlationTag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " correlationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " lastmodSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isSearchResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p10

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AgentEventListeners"

    .line 3
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 4
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    const-string v3, "mms"

    move-object v4, p2

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v12}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$400(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V

    return-void
.end method

.method public onGetNotiCompleted(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetNotiCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastMsgSettingToApp(Ljava/lang/String;)V

    return-void
.end method

.method public onGetRcsCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;Ljava/util/List;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getObjectID()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v4

    .line 6
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    const-string v7, "AgentEventListeners"

    if-nez v6, :cond_2

    const-string v6, "\\Pending"

    .line 8
    invoke-interface {p4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    .line 10
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetRcsCompleted: phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "tid="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl= "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " objectId= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " correlationTag= "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lastmodseq= "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "correlationId "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSearchResult="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isDownload="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 11
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    .line 12
    invoke-static {p5}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p5

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v1

    const-string v3, "rcs"

    invoke-virtual {p5, v3, v0, v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->isDuplicatedLastModSeq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {v0, p5, v4}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$500(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;ZLcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V

    .line 15
    iget-object p5, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p5}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p5

    iget-object p5, p5, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p5, p2, p1, p3, p6}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateRcs(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;Z)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "invalid flag or Ignore PENDING msg for SD"

    .line 16
    invoke-static {v7, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " correlationTag="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " correlationId="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " lastmodSeq="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " flags="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " respCode="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " agent type="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p4, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    const-string v1, "sms"

    if-ne p10, p4, :cond_0

    move-object p4, v1

    goto :goto_0

    :cond_0
    const-string p4, "mms"

    .line 3
    :goto_0
    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "res_url"

    .line 5
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "correlation_id"

    .line 6
    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p6, "correlation_tag"

    .line 7
    invoke-virtual {v2, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p6, "lastmodseq"

    .line 8
    invoke-virtual {v2, p6, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_2

    const-string p6, "\\Pending"

    invoke-virtual {p8, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_2

    const/16 p7, 0xc8

    if-eq p9, p7, :cond_1

    const-string p1, "Device is SD. Do not notify PostCompleted to App"

    .line 11
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object p5

    const-string p8, "post"

    move-object p6, p2

    move-object p7, p4

    move-object p9, p10

    move-object p10, p1

    invoke-virtual/range {p5 .. p10}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleSuccessResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_1

    :cond_1
    const-string p2, "Object is already created in Server. Need to Update again"

    .line 14
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sync_status"

    const-string p7, "Posted"

    .line 15
    invoke-virtual {v2, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$100(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p7

    const/4 p8, 0x1

    new-array p8, p8, [Ljava/lang/String;

    .line 17
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p9

    aput-object p9, p8, p1

    const-string p1, "correlation_tag=?"

    .line 18
    invoke-virtual {p2, p7, v2, p1, p8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "update "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " db result:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    iget-object p2, p1, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    const/4 p4, 0x0

    .line 21
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p1

    const-string p7, "update"

    .line 22
    invoke-static {p2, v1, p7, p4, p1}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseMmsSmsRelayAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    const-string p2, "eventTypeServer"

    .line 25
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    const-string p2, "UpdateRequest"

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$300(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :goto_1
    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object p5

    const/4 p1, 0x0

    const-string p8, "post"

    move-object p6, p2

    move-object p7, p4

    move-object p9, p10

    move-object p10, p1

    invoke-virtual/range {p5 .. p10}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onRequestFailed(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestFailed: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cmcErrorCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", correlationId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PendingRequest"

    .line 2
    invoke-virtual {p7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "resourceURL"

    .line 4
    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "correlationTag"

    .line 5
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "correlationId"

    .line 6
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleRelayResult(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v1, p5

    move-object v2, p4

    move-object v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleFailedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .locals 1

    .line 1
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdateCompleted: phoneId="

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "agent"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AgentEventListeners"

    invoke-static {p4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;->SMS_AGENT:Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;

    if-ne p8, p1, :cond_0

    const-string p1, "sms"

    goto :goto_0

    :cond_0
    const-string p1, "mms"

    .line 3
    :goto_0
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    const-string p8, "res_url"

    .line 5
    invoke-virtual {p4, p8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_id"

    .line 6
    invoke-virtual {p4, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_tag"

    .line 7
    invoke-virtual {p4, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p7, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    move-result-object p3

    const/4 p8, 0x0

    const-string p6, "update"

    move-object p4, p2

    move-object p5, p1

    invoke-virtual/range {p3 .. p8}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
