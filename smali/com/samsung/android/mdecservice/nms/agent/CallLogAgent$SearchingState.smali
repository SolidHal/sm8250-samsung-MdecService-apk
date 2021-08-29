.class Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "CallLogAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchingState"
.end annotation


# instance fields
.field private mCursor:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    return-void
.end method

.method private processJsonResponse(Lorg/json/JSONObject;)V
    .locals 12

    if-eqz p1, :cond_2

    const-string v0, "objectList"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->parseJson()V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->getAttributesArray()Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    new-instance v2, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->parseCallLogJson(Lorg/json/JSONObject;)V

    .line 9
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgentManager;->getListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v5

    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getObjectID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getFlagList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/agent/object/CallLogObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v11

    .line 14
    invoke-interface/range {v4 .. v11}, Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;->onGetCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->mCursor:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2200(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)V

    :goto_1
    return-void
.end method

.method private throwSearchRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throwSearchRequest: mMinDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->mCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallLogAgent"

    .line 3
    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;-><init>(Z)V

    .line 5
    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setObjectType(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2600(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setDate(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->mCursor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->mCursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setFromCursor(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->encodeJSON()V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsLogServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 12
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v2

    .line 13
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/objects/operations/search"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$1000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 15
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$900(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    move-result-object v4

    .line 16
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2500(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->mCursor:Ljava/lang/String;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$000(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;->access$2700(Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->processJsonResponse(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/CallLogAgent$SearchingState;->throwSearchRequest()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
