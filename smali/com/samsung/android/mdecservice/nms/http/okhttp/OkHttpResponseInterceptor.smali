.class public Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpResponseInterceptor;
.super Ljava/lang/Object;
.source "OkHttpResponseInterceptor.java"

# interfaces
.implements Lf/t;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OkHttpRespIntcptr"


# instance fields
.field private mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpResponseInterceptor;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    return-void
.end method


# virtual methods
.method public intercept(Lf/t$a;)Lf/b0;
    .locals 14

    const-string v0, "Request failed"

    const-string v1, "OkHttpRespIntcptr"

    .line 1
    invoke-interface {p1}, Lf/t$a;->e()Lf/z;

    move-result-object v2

    .line 2
    :try_start_0
    invoke-interface {p1, v2}, Lf/t$a;->d(Lf/z;)Lf/b0;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lf/b0;->O()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "][<--] Headers="

    const-string v6, "][<--] Code="

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "[Retry-"

    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    .line 4
    sget-object v10, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN_INVALID_ACCESS_TOKEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getAdditionalReason()Ljava/lang/String;

    move-result-object v10

    const-string v11, "reason"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Lf/b0;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_SERVER_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 5
    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v12}, Lf/b0;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpResponseInterceptor;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {v10, v8}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->requestSamsungAccountInfo(Z)V

    const-string v10, "Start retry as Samsung Account is expired"

    .line 7
    invoke-static {v1, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v3}, Lf/b0;->s()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-static {v1, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3}, Lf/b0;->N()Lf/r;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-static {v1, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    move v10, v8

    if-eqz v8, :cond_2

    :goto_1
    if-nez v4, :cond_2

    const/4 v4, 0x3

    if-gt v10, v4, :cond_2

    const-wide/16 v3, 0xbb8

    .line 14
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 15
    invoke-virtual {v2}, Lf/z;->g()Lf/z$a;

    move-result-object v3

    const-string v4, "Access-Token"

    invoke-virtual {v3, v4}, Lf/z$a;->f(Ljava/lang/String;)Lf/z$a;

    .line 16
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v3, v4, v8}, Lf/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;

    .line 18
    invoke-virtual {v3}, Lf/z$a;->b()Lf/z;

    move-result-object v3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "][-->] RetryRequest="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpController;->stringfyRequest(Lf/z;)Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-static {v8, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_1
    invoke-interface {p1, v3}, Lf/t$a;->d(Lf/z;)Lf/b0;

    move-result-object v3

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Lf/b0;->s()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Lf/b0;->N()Lf/r;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3}, Lf/b0;->O()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 31
    :catch_0
    :try_start_2
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1, v2}, Lf/t$a;->d(Lf/z;)Lf/b0;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    .line 33
    :goto_2
    throw p1

    :cond_2
    return-object v3

    .line 34
    :catch_1
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1, v2}, Lf/t$a;->d(Lf/z;)Lf/b0;

    move-result-object p1

    return-object p1
.end method
