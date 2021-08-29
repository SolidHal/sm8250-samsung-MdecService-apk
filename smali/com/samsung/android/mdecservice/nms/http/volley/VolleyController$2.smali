.class Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;
.super Ljava/lang/Object;
.source "VolleyController.java"

# interfaces
.implements Lc/a/b/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

.field final synthetic val$callback:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

.field final synthetic val$reqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;->this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;->val$reqId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;->val$callback:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lc/a/b/u;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;->this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;->val$reqId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$2;->val$callback:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->access$100(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;Lc/a/b/u;)V

    return-void
.end method
