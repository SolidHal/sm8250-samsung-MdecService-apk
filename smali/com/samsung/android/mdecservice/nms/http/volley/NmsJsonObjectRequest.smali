.class public Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;
.super Lc/a/b/w/k;
.source "NmsJsonObjectRequest.java"


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mJsonRequest:Lorg/json/JSONObject;

.field private mTag:Ljava/lang/String;

.field private mVolleyCntlr:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

.field private retryCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lc/a/b/p$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lc/a/b/p$a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 1
    invoke-direct/range {v0 .. v5}, Lc/a/b/w/k;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;)V

    const-string p3, "NmsJsonObjRequest"

    .line 2
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->LOG_TAG:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->mVolleyCntlr:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    .line 4
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->mJsonRequest:Lorg/json/JSONObject;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->mTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->retryCount:I

    return-void
.end method

.method private isValidJsonData(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected parseNetworkError(Lc/a/b/u;)Lc/a/b/u;
    .locals 8

    .line 1
    iget-object v0, p1, Lc/a/b/u;->b:Lc/a/b/k;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lc/a/b/k;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Retry-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->retryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "][<--] Headers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lc/a/b/u;->b:Lc/a/b/k;

    iget-object v2, v2, Lc/a/b/k;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NmsJsonObjRequest"

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lc/a/b/u;->b:Lc/a/b/k;

    iget-object v0, v0, Lc/a/b/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/a/b/g;

    .line 4
    invoke-virtual {v3}, Lc/a/b/g;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Reason"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->FORBIDDEN_INVALID_ACCESS_TOKEN:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getAdditionalReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lc/a/b/g;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->INTERNAL_SERVER_ERROR:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lc/a/b/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->mVolleyCntlr:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->requestSamsungAccountInfo()V

    .line 8
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->retryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->retryCount:I

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    if-eqz v4, :cond_4

    .line 9
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->retryCount:I

    const/4 v3, 0x3

    if-gt v0, v3, :cond_4

    const-wide/16 v3, 0xbb8

    .line 10
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][-->] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->mJsonRequest:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_1
    invoke-static {v1, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->mVolleyCntlr:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->getRequestQueue()Lc/a/b/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/a/b/o;->a(Lc/a/b/n;)Lc/a/b/n;

    :cond_4
    return-object p1
.end method

.method protected parseNetworkResponse(Lc/a/b/k;)Lc/a/b/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/k;",
            ")",
            "Lc/a/b/p<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lc/a/b/k;->b:[B

    iget-object v2, p1, Lc/a/b/k;->c:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    .line 2
    invoke-static {v2, v3}, Lc/a/b/w/g;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lc/a/b/k;->c:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "headers"

    if-lez v2, :cond_1

    .line 5
    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;->isValidJsonData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "rawData"

    .line 9
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :goto_0
    invoke-static {p1}, Lc/a/b/w/g;->c(Lc/a/b/k;)Lc/a/b/b$a;

    move-result-object p1

    invoke-static {v2, p1}, Lc/a/b/p;->c(Ljava/lang/Object;Lc/a/b/b$a;)Lc/a/b/p;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Lc/a/b/m;

    invoke-direct {v0, p1}, Lc/a/b/m;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lc/a/b/p;->a(Lc/a/b/u;)Lc/a/b/p;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Lc/a/b/m;

    invoke-direct {v0, p1}, Lc/a/b/m;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lc/a/b/p;->a(Lc/a/b/u;)Lc/a/b/p;

    move-result-object p1

    return-object p1
.end method
