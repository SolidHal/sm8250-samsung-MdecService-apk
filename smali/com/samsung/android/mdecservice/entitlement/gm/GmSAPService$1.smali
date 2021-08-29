.class Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;
.super Lcom/samsung/android/sdk/accessory/SAMessage;
.source "GmSAPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAMessage;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    sget-object p3, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError(), id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onReceive(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(), FromAgent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 4
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "MSG_TYPE"

    .line 5
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "request"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "MSG_PARAM"

    .line 7
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->access$000(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->onReceiveReqMessageFromSAP(Ljava/lang/String;Landroid/content/Context;)I

    move-result p2

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->access$100(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_1

    :cond_0
    const-string p1, "indicator"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v2, :cond_1

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string p2, "receive indicator message...do not anything at the PD side now"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "response"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string p2, "receive response message...do not anything at the PD side now"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string p2, "receive unkwon message"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onSent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSent(), id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "MSG_TYPE"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "response"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "MSG_PARAM"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[{\"MDEC_SUPPORTED\":\"false\"}]"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[{\"MDEC_SUPPORTED\":\"pending\"}]"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "[{\"MDEC_SUPPORTED\":\"true\"}]"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 v1, 0x2

    .line 11
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->onSentResponseMessageComplete(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string p2, "SAP message is sent. but cannot find message in queue"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_5
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string p2, "SAP message is sent. but message queue is null."

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
