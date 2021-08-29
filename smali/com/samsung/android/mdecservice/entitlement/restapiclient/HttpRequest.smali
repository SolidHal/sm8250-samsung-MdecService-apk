.class public Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field protected static final SERVER_DEFAULT_ACS:I = 0x0

.field protected static final SERVER_ES:I = 0x2

.field protected static final SERVER_LOCAL_ACS:I = 0x1


# instance fields
.field final OSP_APPID:Ljava/lang/String;

.field final OSP_CLIENTMODEL:Ljava/lang/String;

.field final OSP_CLIENTTOSVERSION:Ljava/lang/String;

.field final OSP_PACKAGENAME:Ljava/lang/String;

.field final OSP_PACKAGEVERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "x_osp_clientosversion"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->OSP_CLIENTTOSVERSION:Ljava/lang/String;

    const-string v0, "x_osp_appId"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->OSP_APPID:Ljava/lang/String;

    const-string v0, "x_osp_clientmodel"

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->OSP_CLIENTMODEL:Ljava/lang/String;

    const-string v0, "x_osp_packagename"

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->OSP_PACKAGENAME:Ljava/lang/String;

    const-string v0, "x_osp_packageversion"

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->OSP_PACKAGEVERSION:Ljava/lang/String;

    return-void
.end method

.method private setInternalConnectionParamForGetAndDelete(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Access_Token"

    .line 1
    invoke-virtual {p1, v0, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Auth_Device_Id"

    .line 2
    invoke-virtual {p1, p3, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Auth-Server-Url"

    .line 3
    invoke-virtual {p1, p2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setInternalConnectionParamForPostAndPut(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Access_Token"

    .line 1
    invoke-virtual {p1, v0, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Auth_Device_Id"

    .line 2
    invoke-virtual {p1, p3, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Auth-Server-Url"

    .line 3
    invoke-virtual {p1, p2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string p3, "application/json"

    .line 4
    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static trustAllHosts()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X509"

    .line 1
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 2
    :goto_0
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    .line 4
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "tmf is null "

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 6
    :goto_2
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyStoreException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_3
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    :try_start_2
    const-string v2, "TLS"

    .line 9
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 11
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 12
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method


# virtual methods
.method protected buildErrorResponseString(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/StringBuilder;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildErrorResponseString():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0
.end method

.method protected buildResponseString(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/StringBuilder;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildResponseString():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0
.end method

.method protected dataSendAndReceiveProcess(Ljavax/net/ssl/HttpsURLConnection;Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 2
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v2, v0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :catch_2
    move-exception p2

    move-object v2, v0

    .line 6
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exception is occured"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    move-object p1, v0

    :goto_2
    if-eqz v2, :cond_0

    .line 8
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    if-eqz p1, :cond_1

    .line 10
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return v1
.end method

.method protected getBaseUri(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const-string v0, "serverAddrInfo is null"

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSingleServerInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->getEsAddr()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "es address is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x1

    const-string v4, "https://"

    if-ne p2, v3, :cond_5

    .line 7
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSingleServerInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;

    move-result-object p1

    if-nez p1, :cond_3

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->getLocalAcsAddr()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "local acs address is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-nez p2, :cond_7

    .line 13
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getDefaultAcsAddrFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 15
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "default acs address is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_7
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using server type error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->trustAllHosts()V

    .line 3
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p2, 0x7530

    .line 5
    :try_start_1
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 7
    new-instance p2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest$1;-><init>(Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;)V

    .line 8
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 9
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->logError(Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_1
    return-object p1

    .line 10
    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri value is null : +baseUri("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), requestUri("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected logError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpRequest:: error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected makeBuildResponse(Ljavax/net/ssl/HttpsURLConnection;)Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "HttpsURLConnection.HTTP response HTTP_OK."

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->buildResponseString(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpsURLConnection.HTTP response fail. responseCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->buildErrorResponseString(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    :goto_0
    new-instance v1, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/mdecservice/entitlement/obj/HttpResponsePair;-><init>(ILjava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected setAndPrintSaInfo(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setApiHeaderForSA(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "SA Header has error"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setApiHeaderForSA(Landroid/content/Context;Ljavax/net/ssl/HttpsURLConnection;)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8f9l37bswj"

    .line 2
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v5, "x_osp_clientosversion"

    .line 5
    invoke-virtual {p2, v5, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x_osp_appId"

    .line 6
    invoke-virtual {p2, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x_osp_clientmodel"

    .line 7
    invoke-virtual {p2, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x_osp_packagename"

    .line 8
    invoke-virtual {p2, v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x_osp_packageversion"

    .line 9
    invoke-virtual {p2, v1, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 11
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name not found exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected setConnectionParamForDelete(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "DELETE"

    .line 1
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setInternalConnectionParamForGetAndDelete(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected setConnectionParamForGet(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "GET"

    .line 1
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setInternalConnectionParamForGetAndDelete(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected setConnectionParamForPost(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "POST"

    .line 1
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setInternalConnectionParamForPostAndPut(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected setConnectionParamForPut(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "PUT"

    .line 1
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpRequest;->setInternalConnectionParamForPostAndPut(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/net/ProtocolException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
