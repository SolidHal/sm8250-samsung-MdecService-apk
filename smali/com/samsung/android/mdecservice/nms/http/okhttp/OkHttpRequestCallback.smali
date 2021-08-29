.class public Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;
.super Ljava/lang/Object;
.source "OkHttpRequestCallback.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/http/okhttp/IOkHttpRequestCallback;


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OkHttpRequestCallback"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Failure Response:: I\'ve been called back"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JJZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onProgress : I\'ve been called back"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/io/BufferedInputStream;Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onSuccessResponse: I\'ve been called back with reader"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;->LOG_TAG:Ljava/lang/String;

    const-string p2, "I\'ve been called back"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
