.class public Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;
.super Lcom/samsung/android/sdk/accessory/SAAgentV2;
.source "GmSAPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$RESPONSE;,
        Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$REQUEST;,
        Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$INDICATOR;,
        Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$MESSAGE;
    }
.end annotation


# static fields
.field public static final GM_SAP_SEND_IND:Ljava/lang/String; = "send_ind"

.field public static final GM_SAP_STOP_SERVICE:Ljava/lang/String; = "stop_service"

.field public static final TAG:Ljava/lang/String;

.field private static findPeerRetryCounter:I

.field private static sequenceNumber:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

.field sendMessageQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sequenceNumber:I

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->findPeerRetryCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mContext:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    .line 6
    new-instance p1, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {p1}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->processUnsupportedException(Lcom/samsung/android/sdk/SsdkUnsupportedException;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 10
    :cond_0
    :goto_0
    new-instance p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;

    invoke-direct {p1, p0, p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$1;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendResponseMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    return-void
.end method

.method private createIndicateMessage()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "MSG_TYPE"

    const-string v2, "indicator"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MSG_ID"

    const-string v2, "mdec_state_changed_ind"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSequenceNumber()I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sequenceNumber:I

    const v1, 0xffff

    div-int/2addr v0, v1

    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sequenceNumber:I

    add-int/lit8 v1, v0, 0x1

    .line 2
    sput v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sequenceNumber:I

    return v0
.end method

.method private processUnsupportedException(Lcom/samsung/android/sdk/SsdkUnsupportedException;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string v1, "You need to install Samsung Accessory SDK to use this application."

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string v1, "You need to update Samsung Accessory SDK to use this application."

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string v0, "We recommend that you update your Samsung Accessory SDK before using this application."

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private sendResponseMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "MSG_TYPE"

    const-string v2, "response"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MSG_ID"

    const-string v2, "mdec_get_state_rsp"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MSG_SEQ"

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->makeMdecSupportedFormat(I)Lorg/json/JSONArray;

    move-result-object p2

    const-string v1, "MSG_PARAM"

    .line 6
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string v1, "JSON Exception!!!"

    invoke-static {p2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lorg/json/JSONObject;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public findPeerAgent()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->findPeerAgents()V

    return-void
.end method

.method makeMdecSupportedFormat(I)Lorg/json/JSONArray;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    const-string v3, "MDEC_SUPPORTED"

    if-ne p1, v2, :cond_0

    :try_start_0
    const-string p1, "false"

    .line 3
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string p1, "true"

    .line 4
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string p1, "pending"

    .line 5
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFindPeerAgentResponse : result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->findPeerRetryCounter:I

    .line 3
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 4
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendIndicateMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->findPeerRetryCounter:I

    const/16 p2, 0x14

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    sput p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->findPeerRetryCounter:I

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find peer agent - retry "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->findPeerRetryCounter:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->findPeerAgents()V

    goto :goto_1

    .line 9
    :cond_1
    sput v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->findPeerRetryCounter:I

    .line 10
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string p2, "cannot find peer agent - send indication message fail"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->onFindPeerFail()V

    :cond_2
    :goto_1
    return-void
.end method

.method public sendData(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send to peer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage;->send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->TAG:Ljava/lang/String;

    const-string v2, "message queue is null, re-create message queue"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendMessageQueue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v1

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public sendIndicateMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->createIndicateMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
