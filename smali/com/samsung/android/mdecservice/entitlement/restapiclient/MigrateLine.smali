.class public Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;
.super Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;
.source "MigrateLine.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->getBaseUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.0/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/lines/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/migrate"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->init(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;
    .locals 4

    const-string v0, ")"

    .line 1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Url is incorrect"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setConnectionParamForPost(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "setConnectionParamForPost error"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setAndPrintSaInfo(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)V

    .line 6
    :try_start_0
    sget-object p3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MigrateLine request : authDeviceId("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->dataSendAndReceiveProcess(Ljavax/net/ssl/HttpsURLConnection;Lorg/json/JSONObject;)Z

    move-result p3

    if-nez p3, :cond_2

    return-object v2

    .line 8
    :cond_2
    sget-object p3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MigrateLine request : Method("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Request URI("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 9
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Access_Token("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "Access_Token"

    .line 10
    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Auth_Device_Id("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "Auth_Device_Id"

    .line 11
    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Auth-Server-Url("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "Auth-Server-Url"

    .line 12
    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Content-Type("

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v3, "Content-Type"

    .line 13
    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 14
    invoke-static {p3, p4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Data : "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->makeBuildResponse(Ljavax/net/ssl/HttpsURLConnection;)Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponseCode()I

    move-result p3

    .line 18
    sget-object p4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MigrateLine response : responseCode("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), authDeviceId("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    new-instance p2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponse()Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p4, 0x1

    invoke-direct {p2, p1, p4, p3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;-><init>(Ljava/lang/StringBuilder;II)V

    return-object p2

    :catch_0
    move-exception p1

    .line 20
    invoke-super {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    return-object v2
.end method
