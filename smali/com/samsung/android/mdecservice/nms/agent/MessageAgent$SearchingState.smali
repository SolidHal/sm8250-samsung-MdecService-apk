.class Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "MessageAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchingState"
.end annotation


# instance fields
.field private mCursor:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;-><init>(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    return-void
.end method

.method private processJsonResponse(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_2

    const-string v0, "objectList"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->parseJson()V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->getAttributesArray()Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$800(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->getCursor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->mCursor:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    :goto_1
    return-void
.end method

.method private throwSearchRequest()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throwSearchRequest: mMinDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->mCursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgAgent"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;-><init>(Z)V

    .line 3
    sget-object v1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setObjectType(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setDate(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->mCursor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->mCursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->setFromCursor(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->encodeJSON()V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->getJsonObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getNmsMsgServerAddr(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "box:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    .line 10
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getLineId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/objects/operations/search"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mRequestReason:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mMsgCallBack:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-interface {v3, v0, v1, v4, v2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$1400(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->mCursor:Ljava/lang/String;

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget v0, v0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    .line 2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$1500(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)Lcom/samsung/android/mdecservice/nms/util/IState;

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

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgentBase;->makeFailureReport(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->this$0:Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;->access$700(Lcom/samsung/android/mdecservice/nms/agent/MessageAgent;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 8
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "response"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->processJsonResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/MessageAgent$SearchingState;->throwSearchRequest()V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
