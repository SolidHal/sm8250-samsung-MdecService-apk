.class public Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;
.super Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;
.source "RemoveLine.java"


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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->init(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;
    .locals 6

    const-string v0, ")"

    .line 1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Url is incorrect"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setConnectionParamForDelete(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "setConnectionParamForDelete error"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setAndPrintSaInfo(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)V

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 7
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveLine request : authDeviceId("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveLine request : Method("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), Request URI("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 9
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), Access_Token("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Access_Token"

    .line 10
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), Auth_Device_Id("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Auth_Device_Id"

    .line 11
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), Auth-Server-Url("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Auth-Server-Url"

    .line 12
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->makeBuildResponse(Ljavax/net/ssl/HttpsURLConnection;)Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponseCode()I

    move-result v1

    .line 16
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveLine response : responseCode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), authDeviceId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    new-instance p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p1, p2, p3, v1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;-><init>(Ljava/lang/StringBuilder;II)V

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    invoke-super {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    return-object v2
.end method
