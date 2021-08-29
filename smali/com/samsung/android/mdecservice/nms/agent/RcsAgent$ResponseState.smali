.class Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "RcsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V

    return-void
.end method

.method private processBinaryResponse(Ljava/io/BufferedInputStream;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processBinaryResponse: mFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgent"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_GET_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    :cond_0
    if-eqz p1, :cond_9

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 6
    sget-boolean v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    if-eqz v4, :cond_2

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v4, v4, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/FileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/FileUtil;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 12
    :goto_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attr filepath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v5, v5, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "written filepath= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_2
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    const/4 v5, 0x0

    .line 16
    invoke-virtual {v4, v3, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 17
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 18
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    .line 19
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processBinaryResponse: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_5

    .line 20
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 21
    :cond_5
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "GetRcsThumbRequest"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "GetRcsPayloadRequest"

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onGetBinaryDataCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v4

    :goto_5
    if-eqz v2, :cond_8

    .line 29
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 30
    :cond_8
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_6
    throw v0

    :cond_9
    :goto_7
    const-string p1, "processBinaryResponse: incorrect response or no mMsgRcsAttr"

    .line 33
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processJsonResponse(ILorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processJsonResponse mRequestReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgent"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->abortDelayedSyncEventComplete(I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "PostGroupInfoRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "SearchStateMsgRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "PostContactRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "PostStateRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "SearchContactRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "BulkUpdateRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "BulkDeleteCifRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "UpdateRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "SearchRelayDataRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "DeleteContactRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v2, "BulkPostRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v2, "BulkPostCifRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_c
    const-string v2, "PostRcsRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_d
    const-string v2, "UpdateContactRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_e
    const-string v2, "SearchGroupInfoRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_f
    const-string v2, "PostCifRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_10
    const-string v2, "SearchCifRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_11
    const-string v2, "BulkDeleteRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_12
    const-string v2, "UpdateGroupInfoRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->processJsonResponseForCif(Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->processJsonResponseForRcsExt(Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 6
    :pswitch_2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->parseJSON()V

    .line 8
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactListObject;->getContactCapabilities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onSearchContactCompleted(ILjava/util/List;)V

    goto/16 :goto_2

    .line 9
    :pswitch_3
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->parseJSON()V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->getSuccessContactIdList()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->getTerminatedContactIdList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->getFailedContactIdList()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p2, v0, v2, v3, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onDeleteContactCompleted(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_2

    .line 15
    :pswitch_4
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->parseJSON()V

    .line 17
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->getSuccessContactIdList()Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->getFailedContactIdList()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p2, v0, v2, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostContactCompleted(ILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_2

    .line 20
    :pswitch_5
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->parseJSON()V

    .line 22
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->getSuccessContactIdList()Ljava/util/List;

    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactResponseListObject;->getFailedContactIdList()Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-interface {p2, v0, v2, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostContactCompleted(ILjava/util/List;Ljava/util/List;)V

    goto/16 :goto_2

    .line 25
    :pswitch_6
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 27
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-boolean p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->setRelay(Z)V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p2, v2, v0, v3, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_2

    .line 31
    :pswitch_7
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 33
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-interface {p2, v2, v0, v3, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkDeleteCifCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_2

    .line 36
    :pswitch_8
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 38
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-interface {p2, v2, v0, v3, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 41
    :pswitch_9
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-interface {p2, v2, v0, v3, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkPostCifCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 46
    :pswitch_a
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBulkResponseList:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getFailureResponseList()Ljava/util/List;

    move-result-object p1

    .line 50
    invoke-interface {p2, v2, v0, v3, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 51
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->processJsonResponseForUpdate(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 52
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->processJsonResponseForPost(ILorg/json/JSONObject;)V

    .line 53
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventComplete(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73a566f5 -> :sswitch_12
        -0x678cb5ae -> :sswitch_11
        -0x609cba69 -> :sswitch_10
        -0x4be95571 -> :sswitch_f
        -0x358ad816 -> :sswitch_e
        -0x2f09d868 -> :sswitch_d
        -0x2ec70753 -> :sswitch_c
        -0x86b8fbf -> :sswitch_b
        0x130d3d -> :sswitch_a
        0x1b40fa -> :sswitch_9
        0x6399e1c -> :sswitch_8
        0x17c3bd66 -> :sswitch_7
        0x1ef89f0c -> :sswitch_6
        0x4b7d7974 -> :sswitch_5
        0x4bd4e237 -> :sswitch_4
        0x5326f19e -> :sswitch_3
        0x5ddd0b2f -> :sswitch_2
        0x5de11c57 -> :sswitch_1
        0x7b16f2e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processJsonResponseForCif(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "RcsAgent"

    const-string v1, "processJsonResponseForCif:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getParsedRcsObjects()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;

    invoke-direct {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;-><init>()V

    .line 6
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->parseJSONEle(Lorg/json/JSONObject;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v4, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getResourceURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getObjectID()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getBotServiceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getTimeStamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getCif()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-boolean v10, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->isSearchOp:Z

    .line 9
    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onGetCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v1

    const-string v2, "eventTypeServer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setFromCursor(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    :cond_1
    return-void
.end method

.method private processJsonResponseForPost(ILorg/json/JSONObject;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processJsonResponseForPost: respCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsAgent"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reference"

    .line 2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->parseJSON()V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getObjectID()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8
    iget-object p1, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_FT:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    if-eq p2, v2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_FT:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    if-ne p2, v2, :cond_2

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getPayloadURL()Ljava/lang/String;

    move-result-object v9

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response for FT POST request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v11, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    iget-object v12, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move v10, p1

    invoke-interface/range {v2 .. v12}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostFtCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->isPerformanceTest()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 15
    sget-object v0, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {p2, v0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v10, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    move v9, p1

    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "object"

    .line 17
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/MessageObject;->parseJSON()V

    .line 20
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v6, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    move v8, p1

    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "groupInfoObject"

    .line 21
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-direct {v0, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;-><init>(Lorg/json/JSONObject;)V

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->parseJSON()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne p2, v1, :cond_9

    .line 24
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v6, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    move v8, p1

    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "botInfoObject"

    .line 25
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->parseJSON()V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getResourceURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getObjectID()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 30
    iget-object p1, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v0

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onNotifyUploadCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V

    goto :goto_0

    .line 31
    :cond_8
    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v1, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v3, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mFlag:Ljava/lang/String;

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private processJsonResponseForRcsExt(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "RcsAgent"

    const-string v1, "processJsonResponseForRcsExt:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getParsedRcsObjects()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getParsedRcsObjects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getRcsObjectType()Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    move-result-object v4

    .line 6
    invoke-interface {p1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->OnGetRcsObjectsCompleted(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "eventTypeServer"

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setFromCursor(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    const-string v1, "SearchGroupInfoRequest"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "processJsonResponseForRcsExt: start state msg search"

    .line 14
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMinDate:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "SearchStateMsgRequest"

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 18
    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->markSearchCompleted(Ljava/lang/String;)V

    return-void
.end method

.method private processJsonResponseForUpdate(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "RcsAgent"

    const-string v1, "processJsonResponseForUpdate:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "groupInfoObject"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;-><init>(Lorg/json/JSONObject;)V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->parseJSON()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne p1, v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v6, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v8

    .line 7
    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onUpdateGioCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->parseJSON()V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-boolean p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mIsRelay:Z

    invoke-virtual {v8, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->setRelay(Z)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v1

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v6, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private processStrResponse(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->abortDelayedSyncEventComplete(I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    const-string v2, "RcsAgent"

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "DeleteRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "RelayRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v3, "PostRcsPayloadRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_3
    const-string v3, "GetRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v3, "RelayResponse"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v3, "PostRcsRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_6
    const-string v3, "DeleteCifRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mBotServiceId:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onDeleteCifCompeted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    const-string v0, "/payload/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onPostPayloadCompleted(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mObjectId:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mUploadStatus:Ljava/lang/String;

    iget-object v9, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mMsgRcsAttr:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onNotifyUploadCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V

    goto/16 :goto_2

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mTid:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v7, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationTag:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mCorrelationId:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "response can not be identified"

    .line 10
    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    const-string v2, "groupInfoObjects"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-direct {v2, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->parseJSON()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object p1

    sget-object v3, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne p1, v3, :cond_a

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->GROUP_INFO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    invoke-interface {p1, v2, v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->OnGetRcsObjectsCompleted(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V

    goto/16 :goto_2

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    const-string v2, "botinfoObjects"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->parseJSON()V

    .line 20
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v3, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getBotServiceId()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getTimeStamp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/chatbot/BotInfoObject;->getCif()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-boolean v9, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->isSearchOp:Z

    .line 22
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->onGetCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    const-string v2, "stateMsg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getParsedRcsObjects()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->getParsedRcsObjects()Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->STATE_MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    invoke-interface {p1, v2, v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->OnGetRcsObjectsCompleted(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V

    goto :goto_2

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mResourceUrl:Ljava/lang/String;

    const-string v2, "objects"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v2, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;

    invoke-direct {v2, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->parseJSON()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object p1

    sget-object v3, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne p1, v3, :cond_a

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mRcsAgentMan:Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->MESSAGE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    invoke-interface {p1, v2, v0, v3}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;->OnGetRcsObjectsCompleted(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V

    .line 33
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V

    .line 34
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventComplete(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3c2a8226 -> :sswitch_6
        -0x2ec70753 -> :sswitch_5
        -0x2cb8762e -> :sswitch_4
        -0xa11f587 -> :sswitch_3
        -0x15616bd -> :sswitch_2
        0x300106de -> :sswitch_1
        0x64b98e44 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgentBase;->makeFailureReport(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;)V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->processBinaryResponse(Ljava/io/BufferedInputStream;)V

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 9
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "data"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->processStrResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 12
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "response"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "code"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$ResponseState;->processJsonResponse(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    :pswitch_4
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
