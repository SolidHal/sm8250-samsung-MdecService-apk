.class public Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
.super Ljava/lang/Object;
.source "VolleyRequestCallback.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/http/volley/IVolleyRequestCallback;


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VolleyRequestCallback"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Failure Response:: I\'ve been called back"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string p2, "I\'ve been called back strResp"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccessResponse(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string p2, "I\'ve been called back"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccessResponse([BLorg/json/JSONObject;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string p2, "I\'ve been called back binaryResp"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
