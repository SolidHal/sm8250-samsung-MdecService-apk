.class public Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;
.super Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;
.source "GetUserLocalAcsAddress.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->getBaseUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.0/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/localacsaddress"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->init(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public request(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;
    .locals 5

    const-string v0, "Auth-Server-Url"

    const-string v1, "Access_Token"

    .line 1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Url is incorrect"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_0
    const-string v4, "GET"

    .line 3
    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v1, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setAndPrintSaInfo(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)V

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetUserLocalAcsAddress request : Method("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), Request URI("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 9
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), Access_Token("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 10
    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), Auth-Server-Url("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 11
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->makeBuildResponse(Ljavax/net/ssl/HttpsURLConnection;)Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    new-instance v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;-><init>(Ljava/lang/StringBuilder;II)V

    return-object v1

    :catch_0
    move-exception p1

    .line 16
    invoke-super {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    return-object v3
.end method
