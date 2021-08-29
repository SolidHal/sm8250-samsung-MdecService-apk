.class public Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;
.super Ljava/lang/Object;
.source "BulkResponseObject.java"


# static fields
.field public static final KEY_FAIL_TYPE_POLICY_EXCEPTION:Ljava/lang/String; = "policyException"

.field public static final KEY_FAIL_TYPE_SERVICE_EXCEPTION:Ljava/lang/String; = "serviceException"

.field public static final KEY_FAIL_VALUE_MESSAGEID:Ljava/lang/String; = "messageId"

.field public static final KEY_FAIL_VALUE_TEST:Ljava/lang/String; = "text"

.field public static final KEY_FAIL_VALUE_VARIABLES:Ljava/lang/String; = "variables"

.field public static final KEY_OBJ_RESPONSE:Ljava/lang/String; = "response"

.field public static final KEY_RESP_CODE:Ljava/lang/String; = "code"

.field public static final KEY_RESP_FAILURE:Ljava/lang/String; = "failure"

.field public static final KEY_RESP_REASON:Ljava/lang/String; = "reason"

.field public static final KEY_RESP_SUCCESS:Ljava/lang/String; = "success"

.field public static final KEY_RESP_SUCCESS_URL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_ROOT_BULK_RESPONSE:Ljava/lang/String; = "bulkResponseList"

.field public static final LOG_TAG:Ljava/lang/String; = "BulkRespObj"


# instance fields
.field private mBulkResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mFailedRequestedIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFailureResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonStr:Ljava/lang/String;

.field private mResourceUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mdecservice/nms/http/HttpResponse;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailureResponseList:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailedRequestedIndices:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mResourceUrlList:Ljava/util/List;

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 9
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->translateErrorCodeToCmcError(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_code"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailureResponseList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mJsonStr:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailureResponseList:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailedRequestedIndices:Ljava/util/List;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mResourceUrlList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFailureResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailureResponseList:Ljava/util/List;

    return-object v0
.end method

.method public getResourceUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mResourceUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getSuccessResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    return-object v0
.end method

.method public parseJSON()V
    .locals 12

    const-string v0, "response"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "bulkResponseList"

    .line 2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    .line 7
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reason"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->getReasonByCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;-><init>(ILjava/lang/String;)V

    .line 11
    sget-object v3, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->NO_CONTENT:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, " resUrl="

    const-string v7, "res_url"

    const-string v8, "resourceURL"

    const-string v9, "success"

    const-string v10, "httpResp="

    const-string v11, "BulkRespObj"

    if-eqz v3, :cond_1

    .line 12
    :try_start_1
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 16
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mResourceUrlList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_1
    sget-object v3, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->OK:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 24
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 25
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mResourceUrlList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 29
    :cond_3
    sget-object v3, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->CREATED:Lcom/samsung/android/mdecservice/nms/http/HttpResponse;

    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 30
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 33
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 34
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mResourceUrlList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailedRequestedIndices:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "result_code"

    .line 41
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/http/HttpResponseBox;->translateErrorCodeToCmcError(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailureResponseList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailedRequestedIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_7

    .line 46
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mBulkResponseList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailedRequestedIndices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public setRelay(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, "is-relay"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mSuccessResponseList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailureResponseList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/bulk/BulkResponseObject;->mFailureResponseList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void
.end method
