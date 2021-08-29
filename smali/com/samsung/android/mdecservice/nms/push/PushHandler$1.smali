.class Lcom/samsung/android/mdecservice/nms/push/PushHandler$1;
.super Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;
.source "PushHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handlDoRetrievePushNotification(Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/push/PushHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/push/PushHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureResponse(Lcom/samsung/android/mdecservice/nms/http/HttpResponse;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFailureResponse: fail to get large push, errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PushHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccessResponse(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string p2, "PushHandler"

    const-string v0, " onSuccessResponse: success to get large push"

    .line 1
    invoke-static {p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;

    invoke-direct {p2, p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->parseJSON()V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/PushHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/push/PushHandler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/push/PushHandler;->handleNmsPushNotification(Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;)V

    return-void
.end method
