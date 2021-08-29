.class public Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;
.super Ljava/lang/Object;
.source "NmsBinaryDataObject.java"


# instance fields
.field headers:Lorg/json/JSONObject;

.field rawData:[B


# direct methods
.method public constructor <init>([BLorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->rawData:[B

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->headers:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getHeaders()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->headers:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->rawData:[B

    return-object v0
.end method

.method public setHeaders(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->headers:Lorg/json/JSONObject;

    return-void
.end method

.method public setRawData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->rawData:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NmsBinaryDataObject{headers= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->headers:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rawData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/http/volley/NmsBinaryDataObject;->rawData:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
