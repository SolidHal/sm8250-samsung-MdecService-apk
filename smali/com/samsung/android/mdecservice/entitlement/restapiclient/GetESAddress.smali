.class public Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;
.super Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;
.source "GetESAddress.java"


# instance fields
.field private mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->getBaseUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1.0/defaultentitlementserveraddress"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->init(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method


# virtual methods
.method public request()Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Url is incorrect"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "GET"

    .line 3
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetESAddress request : Method("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), Request URI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 6
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;->mUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->makeBuildResponse(Ljavax/net/ssl/HttpsURLConnection;)Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;->getResponse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v3, v0, v2, v1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;-><init>(Ljava/lang/StringBuilder;II)V

    return-object v3

    :catch_0
    move-exception v0

    .line 11
    invoke-super {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    return-object v1
.end method
