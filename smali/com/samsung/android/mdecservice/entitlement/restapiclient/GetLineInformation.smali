.class public Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;
.super Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;
.source "GetLineInformation.java"


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

    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Url is incorrect"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setConnectionParamForGet(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "setConnectionParamForGet error"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setAndPrintSaInfo(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GetLineInformation request : Method("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), Request URI("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), Access_Token("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Access_Token"

    .line 9
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), Auth_Device_Id("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Auth_Device_Id"

    .line 10
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), Auth-Server-Url("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Auth-Server-Url"

    .line 11
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-static {p1, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetLineInformation;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->makeBuildResponse(Ljavax/net/ssl/HttpsURLConnection;)Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponseCode()I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;-><init>(Ljava/lang/StringBuilder;II)V

    return-object v0

    :catch_0
    move-exception p1

    .line 16
    invoke-super {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    return-object v1
.end method
