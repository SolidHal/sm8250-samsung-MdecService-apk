.class Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "CallLogAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResposnseState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    return-void
.end method

.method private processJsonResponse(Lorg/json/JSONObject;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->abortDelayedSyncEventComplete(I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PostRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Landroid/content/ContentValues;)V

    :cond_0
    const-string v0, "reference"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->parseJSON()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v3

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/ResponseObject;->getObjectID()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, "0"

    .line 12
    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "object"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->parseJSON()V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v3

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v8

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "0"

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v9, p1

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v10

    .line 22
    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V

    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    goto/16 :goto_2

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UpdateRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->parseJSON()V

    .line 28
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateResponseObject;->getObjectID()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-interface {p1, v2, v3, v0, v4}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Z)V

    goto/16 :goto_2

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BulkPostRequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 34
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 36
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getSuccessResponseList()Ljava/util/List;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v3

    invoke-interface {v0, v3, p1}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onBulkPostCompleted(ILjava/util/List;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 39
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_id"

    .line 40
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_5

    .line 41
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v4, v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Landroid/content/ContentValues;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BulkDeleteRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 44
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v2

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getResourceUrlList()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {p1, v2, v0}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onBulkDeleteCompleted(ILjava/util/List;)V

    goto :goto_2

    .line 49
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BulkUpdateRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 51
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->parseJSON()V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v2

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->getResourceUrlList()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {p1, v2, v0}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onBulkUpdateCompleted(ILjava/util/List;)V

    .line 56
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventComplete(I)V

    return-void
.end method

.method private processStrResponse(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->abortDelayedSyncEventComplete(I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GetRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->parseJSON()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v9

    .line 8
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onGetCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeleteRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 11
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getObjectID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventComplete(I)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/mdecservice/nms/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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

    const-string v2, "CallLogAgent"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->processStrResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ResposnseState;->processJsonResponse(Lorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
