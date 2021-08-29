.class Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "CallLogAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    return-void
.end method

.method private sendBulkOperationRequest()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsLogServerAddr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "box:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 3
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "BulkUpdateRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v3, "BulkAttributeUpdateRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "BulkPostRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "BulkDeleteRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/objects/operations/bulkDelete"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->DELETE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->LOG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 7
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    goto/16 :goto_2

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/objects/operations/bulkAttributeUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->LOG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 11
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    goto :goto_2

    .line 13
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/objects/operations/bulkUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->LOG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 15
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    goto :goto_2

    .line 17
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/objects/operations/bulkCreation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;->LOG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 19
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;-><init>(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$dataType;I)V

    .line 20
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->encodeJSON()V

    :goto_2
    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkOperationObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 23
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    move-result-object v4

    .line 24
    invoke-interface {v2, v1, v0, v3, v4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x678cb5ae -> :sswitch_3
        0x130d3d -> :sswitch_2
        0x242dd01c -> :sswitch_1
        0x4b7d7974 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendDeleteRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    move-result-object v3

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    return-void
.end method

.method private sendGetRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    move-result-object v3

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    return-void
.end method

.method private sendPostRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setFlagList(Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->setCorrelationTag(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->encodeJSON()V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 9
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsLogServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 10
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v2

    .line 11
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/objects"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 13
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    move-result-object v4

    .line 14
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    return-void
.end method

.method private sendSearchRequest()V
    .locals 2

    const-string v0, "CallLogAgent"

    const-string v1, "sendSearchRequest:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->SEARCHING:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private sendUpdateRequest()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/Attribute;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;->addFlagToList(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;->encodeJSON()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/UpdateObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 5
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    move-result-object v4

    .line 6
    invoke-interface {v1, v0, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;->RESPONSE:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1100(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$ServiceAgentState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$300(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$400(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->sendBulkOperationRequest()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PostRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->sendPostRequest()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "GetRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->sendGetRequest()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UpdateRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->sendUpdateRequest()V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeleteRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->sendDeleteRequest()V

    goto :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchRequest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$RequestState;->sendSearchRequest()V

    :cond_6
    :goto_0
    return v0
.end method
