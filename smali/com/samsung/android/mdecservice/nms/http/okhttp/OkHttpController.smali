.class public Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;
.super Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;
.source "OkHttpController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OkHttpCntlr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

.field private mOkHttpCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

.field private sPostClient:Lf/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->sPostClient:Lf/w;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getSaAccessToken()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getSaAuthUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    .line 7
    new-instance p2, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    const-string v0, "OkHttpCntlr"

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mOkHttpCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;JJZ)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->onProgress(JJZ)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mOkHttpCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;Lf/t$a;)Lf/b0;
    .locals 2

    .line 1
    invoke-interface {p1}, Lf/t$a;->e()Lf/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/t$a;->d(Lf/z;)Lf/b0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lf/b0;->P()Lf/b0$a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;

    .line 3
    invoke-virtual {p1}, Lf/b0;->f()Lf/c0;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressResponseBody;-><init>(Lf/c0;Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;)V

    invoke-virtual {v0, v1}, Lf/b0$a;->b(Lf/c0;)Lf/b0$a;

    .line 4
    invoke-virtual {v0}, Lf/b0$a;->c()Lf/b0;

    move-result-object p0

    return-object p0
.end method

.method private getPayloadDownloadClient(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)Lf/w;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/okhttp/b;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/b;-><init>(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    .line 2
    new-instance p1, Lf/w$b;

    invoke-direct {p1}, Lf/w$b;-><init>()V

    new-instance v1, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpResponseInterceptor;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpResponseInterceptor;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    .line 3
    invoke-virtual {p1, v1}, Lf/w$b;->a(Lf/t;)Lf/w$b;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/http/okhttp/a;

    invoke-direct {v1, v0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/a;-><init>(Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;)V

    .line 4
    invoke-virtual {p1, v1}, Lf/w$b;->b(Lf/t;)Lf/w$b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x19

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Lf/w$b;->d(JLjava/util/concurrent/TimeUnit;)Lf/w$b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Lf/w$b;->e(JLjava/util/concurrent/TimeUnit;)Lf/w$b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {p1, v1, v2, v0}, Lf/w$b;->g(JLjava/util/concurrent/TimeUnit;)Lf/w$b;

    .line 8
    invoke-virtual {p1}, Lf/w$b;->c()Lf/w;

    move-result-object p1

    return-object p1
.end method

.method private getPostClient()Lf/w;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->sPostClient:Lf/w;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf/w$b;

    invoke-direct {v0}, Lf/w$b;-><init>()V

    new-instance v1, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpResponseInterceptor;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {v1, v2}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpResponseInterceptor;-><init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    .line 3
    invoke-virtual {v0, v1}, Lf/w$b;->a(Lf/t;)Lf/w$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x19

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lf/w$b;->d(JLjava/util/concurrent/TimeUnit;)Lf/w$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lf/w$b;->e(JLjava/util/concurrent/TimeUnit;)Lf/w$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lf/w$b;->g(JLjava/util/concurrent/TimeUnit;)Lf/w$b;

    .line 7
    invoke-virtual {v0}, Lf/w$b;->c()Lf/w;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->sPostClient:Lf/w;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->sPostClient:Lf/w;

    return-object v0
.end method

.method private postOkHttpRequestToServer(Lf/z;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;Z)V
    .locals 4

    if-eqz p4, :cond_0

    const-string v0, "getPayloadRequestToServer:"

    goto :goto_0

    :cond_0
    const-string v0, "postOkHttpRequestToServer:"

    :goto_0
    const-string v1, "OkHttpCntlr"

    .line 30
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generateRequestId()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mOkHttpCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "][-->] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->stringfyRequest(Lf/z;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "[NMS2]"

    .line 34
    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 35
    invoke-direct {p0, p3}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->getPayloadDownloadClient(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)Lf/w;

    move-result-object p2

    goto :goto_1

    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->getPostClient()Lf/w;

    move-result-object p2

    .line 37
    :goto_1
    invoke-virtual {p2, p1}, Lf/w;->q(Lf/z;)Lf/e;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;

    invoke-direct {p2, p0, v0, p4, p3}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$1;-><init>(Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;Ljava/lang/String;ZLcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    invoke-interface {p1, p2}, Lf/e;->m(Lf/f;)V

    return-void
.end method

.method private sendOkhttpRequestToServer(Ljava/lang/String;Lf/z;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x61bda673

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x61d5345

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GetRcsThumbRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "GetRcsPayloadRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_3

    .line 2
    invoke-direct {p0, p2, p1, p3, v2}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->postOkHttpRequestToServer(Lf/z;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;Z)V

    goto :goto_2

    .line 3
    :cond_3
    invoke-direct {p0, p2, p1, p3, v3}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->postOkHttpRequestToServer(Lf/z;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;Z)V

    :goto_2
    return-void
.end method

.method private static stringfyMultipartBody(Lf/v;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lf/v;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v$b;

    .line 3
    invoke-virtual {v1}, Lf/v$b;->d()Lf/r;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lf/v$b;->d()Lf/r;

    move-result-object v2

    const-string v3, "Content-Disposition"

    invoke-virtual {v2, v3}, Lf/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "root-fields"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lf/v$b;->a()Lf/a0;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->stringfyRequestBody(Lf/a0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringfyRequest(Lf/z;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf/z;->a()Lf/a0;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lf/z;->a()Lf/a0;

    move-result-object v0

    invoke-virtual {v0}, Lf/a0;->contentType()Lf/u;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/z;->a()Lf/a0;

    move-result-object v0

    invoke-virtual {v0}, Lf/a0;->contentType()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x47e40b54

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x36452d

    if-eq v3, v4, :cond_2

    const v4, 0x5ca40550

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "application"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "text"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v6

    goto :goto_0

    :cond_3
    const-string v3, "multipart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v5

    :cond_4
    :goto_0
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    goto :goto_1

    .line 3
    :cond_5
    invoke-virtual {p0}, Lf/z;->a()Lf/a0;

    move-result-object p0

    check-cast p0, Lf/v;

    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->stringfyMultipartBody(Lf/v;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_6
    invoke-virtual {p0}, Lf/z;->g()Lf/z$a;

    move-result-object p0

    invoke-virtual {p0}, Lf/z$a;->b()Lf/z;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lf/z;->a()Lf/a0;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->stringfyRequestBody(Lf/a0;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_1
    return-object v1
.end method

.method private static stringfyRequestBody(Lf/a0;)Ljava/lang/String;
    .locals 4

    const-string v0, "failed to stringfy the request body:"

    const-string v1, "OkHttpCntlr"

    const-string v2, ""

    .line 1
    :try_start_0
    new-instance v3, Lg/c;

    invoke-direct {v3}, Lg/c;-><init>()V

    .line 2
    invoke-virtual {p0, v3}, Lf/a0;->writeTo(Lg/d;)V

    .line 3
    invoke-virtual {v3}, Lg/c;->T()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private static translateRequestType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translateRequestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkHttpCntlr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController$2;->$SwitchMap$com$samsung$android$mdecservice$nms$http$HttpUtil$HttpMethod:[I

    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->translateRequestType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "POST"

    return-object p0

    :cond_0
    const-string p0, "PUT"

    return-object p0

    :cond_1
    const-string p0, "GET"

    return-object p0

    :cond_2
    const-string p0, "DELETED"

    return-object p0
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NMS2]"

    const-string v2, "OkHttpCntlr"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->mOkHttpCntlrHistory:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;)V

    return-void
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

    const-string v1, "OkHttpCntlr"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sput-object p1, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    return-void
.end method

.method public postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOkHttpRequestToServer: destinationUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkHttpCntlr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Access-Token is Null"

    .line 3
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "X-Device-ID is Null"

    .line 6
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "Auth-Server-Url is Null"

    .line 8
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access-Token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    const/4 v4, 0x1

    .line 10
    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", X-Device-ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Auth-Server-Url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x-osp-clientosversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientOsVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x-osp-clientmodel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x-osp-appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAppId:Ljava/lang/String;

    .line 11
    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x-osp-packagename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x-osp-packageversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Lf/z$a;

    invoke-direct {v3}, Lf/z$a;-><init>()V

    const-string v4, "X-Device-ID"

    .line 13
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    const-string v4, "Access-Token"

    .line 14
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAuthUrl:Ljava/lang/String;

    const-string v4, "Auth-Server-Url"

    .line 15
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientOsVersion:Ljava/lang/String;

    const-string v4, "x-osp-clientosversion"

    .line 16
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientModel:Ljava/lang/String;

    const-string v4, "x-osp-clientmodel"

    .line 17
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAppId:Ljava/lang/String;

    const-string v4, "x-osp-appid"

    .line 18
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageName:Ljava/lang/String;

    const-string v4, "x-osp-packagename"

    .line 19
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageVersion:Ljava/lang/String;

    const-string v4, "x-osp-packageversion"

    .line 20
    invoke-virtual {v3, v4, v0}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    const-string v0, "BulkPostMmsRequest"

    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PostMmsRequest"

    .line 22
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "X-Content-Resolution"

    const-string v4, "High"

    .line 23
    invoke-virtual {v3, v0, v4}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", X-Content-Resolution="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_4
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, p2}, Lf/z$a;->g(Ljava/lang/String;)Lf/z$a;

    .line 27
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->translateRequestType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2, p1}, Lf/z$a;->e(Ljava/lang/String;Lf/a0;)Lf/z$a;

    .line 28
    invoke-virtual {v3}, Lf/z$a;->b()Lf/z;

    move-result-object p1

    .line 29
    invoke-direct {p0, p3, p1, p4}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->sendOkhttpRequestToServer(Ljava/lang/String;Lf/z;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V

    return-void
.end method
