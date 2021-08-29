.class Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$3;
.super Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;
.source "VolleyController.java"


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

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;Ljava/lang/String;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 1
    iput-object v0, v8, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$3;->this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$3;->val$tag:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mdecservice/nms/http/volley/NmsJsonObjectRequest;-><init>(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/p$b;Lc/a/b/p$a;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$3;->this$0:Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController$3;->val$tag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;->access$200(Lcom/samsung/android/mdecservice/nms/http/volley/VolleyController;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
