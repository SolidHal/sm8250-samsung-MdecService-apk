.class public Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;
.super Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;
.source "VolleyController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VolleyCntlr"

.field private static final MY_SOCKET_TIMEOUT_MS:I = 0x61a8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

.field private mRequestQueue:Lc/a/b/o;

.field private mVolleyCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 4
    new-instance p2, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    const-string v0, "VolleyCntlr"

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mVolleyCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mVolleyCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;Lc/a/b/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->processErrorResponse(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;Lc/a/b/u;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->generateHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private addToRequestQueue(Lc/a/b/n;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b/n<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "VolleyCntlr"

    const-string v1, "addToRequestQueue:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lc/a/b/n;->setTag(Ljava/lang/Object;)Lc/a/b/n;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->getRequestQueue()Lc/a/b/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc/a/b/o;->a(Lc/a/b/n;)Lc/a/b/n;

    return-void
.end method

.method private generateHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-Device-ID"

    .line 3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    const-string v3, "Access-Token"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    const-string v3, "Auth-Server-Url"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientOsVersion:Ljava/lang/String;

    const-string v3, "x-osp-clientosversion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientModel:Ljava/lang/String;

    const-string v3, "x-osp-clientmodel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAppId:Ljava/lang/String;

    const-string v3, "x-osp-appid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageName:Ljava/lang/String;

    const-string v3, "x-osp-packagename"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageVersion:Ljava/lang/String;

    const-string v3, "x-osp-packageversion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access-Token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    const/4 v4, 0x1

    .line 12
    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", X-Device-ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Auth-Server-Url="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x-osp-clientosversion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientOsVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x-osp-clientmodel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientModel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x-osp-appid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAppId:Ljava/lang/String;

    .line 13
    invoke-static {v0, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x-osp-packagename="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x-osp-packageversion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GetMmsPayloadRequest"

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "X-Content-Resolution"

    const-string v2, "High"

    .line 15
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", X-Content-Resolution="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "VolleyCntlr"

    .line 17
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getReasonHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/a/b/g;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/b/g;

    .line 2
    invoke-virtual {v1}, Lc/a/b/g;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reason"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lc/a/b/g;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private processErrorResponse(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;Lc/a/b/u;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    .line 2
    iget-object v1, p3, Lc/a/b/u;->b:Lc/a/b/k;

    const-string v2, "["

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v1, Lc/a/b/k;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mVolleyCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "][<--] Headers="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lc/a/b/u;->b:Lc/a/b/k;

    iget-object v3, v3, Lc/a/b/k;->d:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "[NMS2]"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p3, Lc/a/b/u;->b:Lc/a/b/k;

    iget-object v0, v0, Lc/a/b/k;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->getReasonHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    iget-object v1, p3, Lc/a/b/u;->b:Lc/a/b/k;

    iget v1, v1, Lc/a/b/k;->a:I

    .line 12
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    iget-object v3, p3, Lc/a/b/u;->b:Lc/a/b/k;

    iget v3, v3, Lc/a/b/k;->a:I

    .line 14
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p2, v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "][<--] Error.Response="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", httpResp="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VolleyCntlr"

    .line 19
    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lf/f0/j/f;->i()Lf/f0/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lf/f0/j/f;->j()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "No System TLS"

    .line 4
    invoke-static {v0, p1}, Lf/f0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 6
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "No System TLS"

    .line 9
    invoke-static {v1, v0}, Lf/f0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private translateRequestType(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->translateRequestType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$4;->$SwitchMap$com$samsung$android$mdecservice$nms$http$HttpUtil$HttpMethod:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 3
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateRequestType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VolleyCntlr"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NMS2]"

    const-string v2, "VolleyCntlr"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mVolleyCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getRequestQueue()Lc/a/b/o;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "VolleyCntlr"

    const-string v1, "getRequestQueue:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mRequestQueue:Lc/a/b/o;

    if-nez v0, :cond_0

    const-string v0, "VolleyCntlr"

    const-string v1, "getRequestQueue: Init the queue"

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mContext:Landroid/content/Context;

    new-instance v2, Lc/a/b/w/j;

    const/4 v3, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lc/a/b/w/j;-><init>(Lc/a/b/w/j$a;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 7
    invoke-static {v1, v2}, Lc/a/b/w/n;->b(Landroid/content/Context;Lc/a/b/w/b;)Lc/a/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mRequestQueue:Lc/a/b/o;

    .line 8
    invoke-virtual {v0}, Lc/a/b/o;->d()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mRequestQueue:Lc/a/b/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifySaInfoRefreshed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySaInfoRefreshed: accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolleyCntlr"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sput-object p1, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    return-void
.end method

.method public postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
    .locals 14

    move-object v10, p0

    move-object/from16 v5, p2

    move-object/from16 v11, p3

    move-object/from16 v0, p4

    const/4 v12, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generateRequestId()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    const-string v4, "postJsonRequestToServer:"

    goto :goto_1

    :cond_1
    const-string v4, "postStringRequestToServer"

    :goto_1
    const-string v6, "VolleyCntlr"

    .line 2
    invoke-static {v6, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request URL "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v4, v10, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mVolleyCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    const-string v6, "][-->] "

    const-string v7, "["

    if-eqz v2, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to url="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v6, "[NMS2]"

    .line 6
    invoke-virtual {v4, v6, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v13, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$3;

    .line 8
    invoke-direct {p0, v11}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->translateRequestType(Ljava/lang/String;)I

    move-result v4

    if-eqz v2, :cond_3

    move-object v6, p1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    move-object v6, v1

    :goto_3
    new-instance v7, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;

    invoke-direct {v7, p0, v3, v2, v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;-><init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;ZLcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    new-instance v8, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;

    invoke-direct {v8, p0, v3, v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;-><init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    move-object v0, v13

    move-object v1, p0

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$3;-><init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lc/a/b/e;

    const/16 v1, 0x61a8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v12, v2}, Lc/a/b/e;-><init>(IIF)V

    invoke-virtual {v13, v0}, Lc/a/b/n;->setRetryPolicy(Lc/a/b/r;)Lc/a/b/n;

    .line 10
    invoke-direct {p0, v13, v11}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->addToRequestQueue(Lc/a/b/n;Ljava/lang/String;)V

    return-void
.end method

.method public postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V

    return-void
.end method

.method public requestSamsungAccountInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->requestSamsungAccountInfo(Z)V

    return-void
.end method
