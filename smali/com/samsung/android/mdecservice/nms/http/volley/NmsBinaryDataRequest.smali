.class public Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataRequest;
.super Lc/a/b/n;
.source "NmsBinaryDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/b/n<",
        "Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lc/a/b/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b/p$b<",
            "Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc/a/b/p$b;Lc/a/b/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lc/a/b/p$b<",
            "Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;",
            ">;",
            "Lc/a/b/p$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lc/a/b/n;-><init>(ILjava/lang/String;Lc/a/b/p$a;)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataRequest;->mListener:Lc/a/b/p$b;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataRequest;->mListener:Lc/a/b/p$b;

    invoke-interface {v0, p1}, Lc/a/b/p$b;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataRequest;->deliverResponse(Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;)V

    return-void
.end method

.method protected parseNetworkResponse(Lc/a/b/k;)Lc/a/b/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/k;",
            ")",
            "Lc/a/b/p<",
            "Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;

    iget-object v1, p1, Lc/a/b/k;->b:[B

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lc/a/b/k;->c:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;-><init>([BLorg/json/JSONObject;)V

    .line 2
    invoke-static {p1}, Lc/a/b/w/g;->c(Lc/a/b/k;)Lc/a/b/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/b/p;->c(Ljava/lang/Object;Lc/a/b/b$a;)Lc/a/b/p;

    move-result-object p1

    return-object p1
.end method
