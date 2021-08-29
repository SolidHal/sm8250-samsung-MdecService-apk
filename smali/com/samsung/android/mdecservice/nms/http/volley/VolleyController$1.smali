.class Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;
.super Ljava/lang/Object;
.source "VolleyController.java"

# interfaces
.implements Lc/a/b/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/b/p$b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

.field final synthetic val$callback:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

.field final synthetic val$isJsonRequest:Z

.field final synthetic val$reqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;ZLcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$reqId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$isJsonRequest:Z

    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "rawData"

    const-string v1, "headers"

    const-string v2, "["

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->access$000(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;)Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    move-result-object v4

    const-string v5, "[NMS2]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "][<--] Headers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "VolleyCntlr"

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "][<--] Response with the empty content"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$isJsonRequest:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "][<--] Response="

    if-eqz v1, :cond_2

    .line 8
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v4, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->onSuccessResponse(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$1;->val$callback:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->onSuccessResponse(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
